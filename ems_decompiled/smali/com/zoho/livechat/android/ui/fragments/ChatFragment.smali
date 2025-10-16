.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment;
.super Lcom/zoho/livechat/android/ui/fragments/BaseFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;
.implements Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;
.implements Lcom/zoho/livechat/android/ui/listener/EndChatTimerListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;,
        Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;
    }
.end annotation


# static fields
.field private static final MENU_EMAIL_TRANSCRIPT:I = 0x1


# instance fields
.field private adapter:Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;

.field private audioRecordThresholdX:I

.field private audioRecordTouchStartX:I

.field private chatLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

.field private deptId:Ljava/lang/String;

.field private downloadedimageslist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private endChatTimer:Lcom/zoho/livechat/android/ui/EndChatTimer;

.field private fileShareAlertDialog:Lb/b/k/g;

.field private is_feedback_dialog_shown:Z

.field private livechatreceiver:Landroid/content/BroadcastReceiver;

.field private mActionBar:Landroidx/appcompat/app/ActionBar;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private messagesAdapter:Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;

.field public predictHandler:Landroid/os/Handler;

.field private prmsg:Ljava/lang/String;

.field private recordAudioCount:I

.field private recordAudioHandler:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;

.field private recordAudioProgress:I

.field private recordAudioStartTime:J

.field private recordAudioTimerStarted:Z

.field private recordAudioUri:Landroid/net/Uri;

.field private recordStarted:Z

.field private salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

.field private wavAudioRecorder:Lcom/zoho/livechat/android/utils/WavAudioRecorder;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->downloadedimageslist:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->prmsg:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioUri:Landroid/net/Uri;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordStarted:Z

    iput v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->audioRecordTouchStartX:I

    iput v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->audioRecordThresholdX:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioStartTime:J

    iput v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioProgress:I

    const/16 v2, 0xe10

    iput v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioCount:I

    iput-boolean v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioTimerStarted:Z

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->fileShareAlertDialog:Lb/b/k/g;

    iput-boolean v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->is_feedback_dialog_shown:Z

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->livechatreceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$1000(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->handleBottomView()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->handleEndChatStartTimer()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->handleAppStatus()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Landroidx/appcompat/app/ActionBar;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->setSendInputButtonState(Z)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->setActionButtonState()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lb/b/k/g;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->fileShareAlertDialog:Lb/b/k/g;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1802(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mCurrentAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic access$1900(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->checkChatConsentAndCallAddVisitor(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;IZ)V

    return-void
.end method

.method public static synthetic access$202(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/models/SalesIQChat;)Lcom/zoho/livechat/android/models/SalesIQChat;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    return-object p1
.end method

.method public static synthetic access$2100(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->checkChatConsentAndCallJoinProactive(I)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->prmsg:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2202(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->prmsg:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->initChatView(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)I
    .locals 0

    iget p0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioProgress:I

    return p0
.end method

.method public static synthetic access$2408(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)I
    .locals 2

    iget v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioProgress:I

    return v0
.end method

.method public static synthetic access$2500(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)I
    .locals 0

    iget p0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioCount:I

    return p0
.end method

.method public static synthetic access$2600(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioTimerStarted:Z

    return p0
.end method

.method public static synthetic access$2700(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioStartTime:J

    return-wide v0
.end method

.method public static synthetic access$2800(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioHandler:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/ChatViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/EndChatTimer;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->endChatTimer:Lcom/zoho/livechat/android/ui/EndChatTimer;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->handleChat()V

    return-void
.end method

.method public static synthetic access$700(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->messagesAdapter:Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->showFeedbackDialog()V

    return-void
.end method

.method public static synthetic access$900(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->refreshChatList()V

    return-void
.end method

.method private canEnableActionButton()Z
    .locals 2

    invoke-static {}, Lcom/zoho/livechat/android/utils/SalesIQCache;->canAllowFileSharingAsFirstMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isFileSharingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->isConnectedToInternet()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canEnableMic()Z
    .locals 1

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->canEnableActionButton()Z

    move-result v0

    return v0
.end method

.method private canEnableSendButton()Z
    .locals 4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->isConnectedToInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object v0

    sget-object v3, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->isConnectedToInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return v1
.end method

.method private canShowConnectWithOperator()Z
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->isBotAttender()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getLastOperatorMessage(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->isBot()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/SalesIQCache;->isBotTransferBlocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMetaInfo()Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->isHandOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canShowMic()Z
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isFileSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->isMessageEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkChatConsentAndCallAddVisitor(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;IZ)V
    .locals 8

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "chat_consent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    if-nez v0, :cond_1

    new-instance p3, Lb/b/k/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-direct {p3, v0}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/zoho/livechat/android/R$layout;->siq_dialog_textview:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Lb/b/k/g$a;->f(Landroid/view/View;)Lb/b/k/g$a;

    sget v2, Lcom/zoho/livechat/android/R$id;->siq_dialog_textview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_chatconsent:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_learnmore:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChatConsentPolicyUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/text/SpannableString;

    const-string v6, " "

    invoke-static {v2, v6, v3}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$17;

    invoke-direct {v3, p0, v4}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$17;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x1000000

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v4, 0x12

    invoke-virtual {v5, v3, v2, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_chatconsent_accept:I

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$18;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$18;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {p3, v0, v1}, Lb/b/k/g$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    sget p2, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_chatconsent_decline:I

    new-instance p4, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$19;

    invoke-direct {p4, p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$19;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-virtual {p3, p2, p4}, Lb/b/k/g$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    invoke-virtual {p3}, Lb/b/k/g$a;->a()Lb/b/k/g;

    move-result-object p1

    new-instance p2, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$20;

    invoke-direct {p2, p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$20;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lb/b/k/g;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    new-instance p3, Lcom/zoho/livechat/android/comm/PXRAddVisitor;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-direct {p3, p1, p2, v2, p4}, Lcom/zoho/livechat/android/comm/PXRAddVisitor;-><init>(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;ZZ)V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object p1

    sget-object p2, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne p1, p2, :cond_3

    invoke-virtual {p3}, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->request()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->connectToWMS()V

    invoke-static {p3}, Lcom/zoho/livechat/android/config/LDChatConfig;->setAddVisitRequest(Lcom/zoho/livechat/android/comm/PXRAddVisitor;)V

    :goto_1
    return-void
.end method

.method private checkChatConsentAndCallJoinProactive(I)V
    .locals 8

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "chat_consent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-nez v0, :cond_1

    new-instance p1, Lb/b/k/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/zoho/livechat/android/R$layout;->siq_dialog_textview:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/b/k/g$a;->f(Landroid/view/View;)Lb/b/k/g$a;

    sget v2, Lcom/zoho/livechat/android/R$id;->siq_dialog_textview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_chatconsent:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_learnmore:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChatConsentPolicyUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/text/SpannableString;

    const-string v6, " "

    invoke-static {v2, v6, v3}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$21;

    invoke-direct {v3, p0, v4}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$21;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x1000000

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v4, 0x12

    invoke-virtual {v5, v3, v2, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_chatconsent_accept:I

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$22;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$22;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    invoke-virtual {p1, v0, v1}, Lb/b/k/g$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    invoke-virtual {p1}, Lb/b/k/g$a;->a()Lb/b/k/g;

    move-result-object p1

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$23;

    invoke-direct {v0, p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$23;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lb/b/k/g;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    new-instance p1, Lcom/zoho/livechat/android/comm/JoinProActive;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-direct {p1, v0, v1}, Lcom/zoho/livechat/android/comm/JoinProActive;-><init>(Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object v0

    sget-object v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/zoho/livechat/android/comm/JoinProActive;->request()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->connectToWMS()V

    invoke-static {p1}, Lcom/zoho/livechat/android/config/LDChatConfig;->setJoinProActive(Lcom/zoho/livechat/android/comm/JoinProActive;)V

    :goto_1
    return-void
.end method

.method private handleAppStatus()V
    .locals 5

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isConversationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEmbedStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/SalesIQCache;->canShowOfflineMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    :cond_3
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEmbedStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/SalesIQCache;->canShowOfflineMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getOfflineMessageView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v1, :cond_4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/SalesIQCache;->getOfflineMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getOfflineMessageView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/utils/SalesIQCache;->getOfflineMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private handleBottomView()V
    .locals 5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getBottomLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordAudioParentView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getBottomLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->hideKeyboard(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->canShowContinueChat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isConversationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getContinueChatParent()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getContinueChatButton()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$26;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$26;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getContinueChatParent()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getContinueChatParent()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordStarted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getBottomLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordAudioParentView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getInputParentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->shouldHideInput()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getBottomLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->hideKeyboard(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getInputParentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x3ec28f5c    # 0.38f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->setSendInputButtonState(Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getLastOperatorMessage(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->isInputCard()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->saveMessageDraft()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_bot_input_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getInputParentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDraft()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDraft()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDraft()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_messages_input_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    invoke-direct {p0, v2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->setSendInputButtonState(Z)V

    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->setActionButtonState()V

    :goto_1
    return-void
.end method

.method private handleChat()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "temp_chid"

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->setChatUILive(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->handleBottomView()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->refreshChatList()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->setActionButtonState()V

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->setTitle()V

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->loadImageIds()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->showFeedbackDialog()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->handleAppStatus()V

    return-void
.end method

.method private handleEndChatStartTimer()V
    .locals 5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getTimerLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->endChatTimer:Lcom/zoho/livechat/android/ui/EndChatTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    new-instance v0, Lcom/zoho/livechat/android/ui/EndChatTimer;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEndChatTimerTimeRemaining()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zoho/livechat/android/ui/EndChatTimer;-><init>(JJ)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->endChatTimer:Lcom/zoho/livechat/android/ui/EndChatTimer;

    invoke-virtual {v0, p0}, Lcom/zoho/livechat/android/ui/EndChatTimer;->addListener(Lcom/zoho/livechat/android/ui/listener/EndChatTimerListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->endChatTimer:Lcom/zoho/livechat/android/ui/EndChatTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private handleStartChatView()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isConversationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getStartChatLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getStartChatLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$29;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$29;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getStartChatLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initChatView()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "chid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->initChatView(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Chat id is empty"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initChatView(Ljava/lang/String;)V
    .locals 13

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChat(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-static {v1, v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getMessagesCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v5

    invoke-direct {v0, v1, v4, v5, p0}, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;-><init>(Landroid/database/Cursor;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->messagesAdapter:Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;

    invoke-virtual {v0, p0}, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->setWidgetListener(Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getChatRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->messagesAdapter:Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getChatRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;

    invoke-direct {v0, p0, v3}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->predictHandler:Landroid/os/Handler;

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;

    invoke-direct {v0, p0, v3}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioHandler:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;

    sget-boolean v0, Lcom/zoho/livechat/android/constants/SystemUtil;->istakescreenshot:Z

    if-nez v0, :cond_1

    sput-object v3, Lcom/zoho/livechat/android/constants/SystemUtil;->screenurl:Ljava/io/File;

    :cond_1
    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->checkandshareScreenshot()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    const-string v0, "temp_chid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->messagesAdapter:Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMessageLoadingView()Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getChatMessagesParentView()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMessageLoadingView()Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getChatMessagesParentView()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getChatRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->messagesAdapter:Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Lcom/zoho/livechat/android/utils/GetVisitorTranscriptUtil;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/zoho/livechat/android/utils/GetVisitorTranscriptUtil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    :cond_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p1

    if-ne p1, v2, :cond_8

    :cond_4
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getQuestionMessage(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    if-ne v0, v1, :cond_8

    :cond_5
    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getAddVisitRequest()Lcom/zoho/livechat/android/comm/PXRAddVisitor;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/zoho/livechat/android/utils/SalesIQCache;->isAddVisitorRequested()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p0, v0, p1, v3}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->makeAddVisitorRequest(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_2

    :cond_6
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMessageLoadingView()Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getChatMessagesParentView()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object p1, Lcom/zoho/livechat/android/config/LDChatConfig;->isStartChat:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p1, Lcom/zoho/livechat/android/config/LDChatConfig;->isStartChat:Ljava/lang/Boolean;

    new-instance p1, Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v6, 0x0

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v9, 0x2

    const-string v5, "temp_chid"

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/zoho/livechat/android/models/SalesIQChat;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getQuestion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v1

    iput-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    new-instance v1, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const/4 v6, 0x1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v10

    sget-object v2, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v12

    const-string v5, "temp_chid"

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->refreshChatList()V

    invoke-virtual {p0, p1, v1, v3}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->makeAddVisitorRequest(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getQuestion()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getQuestion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->handleChat()V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_a

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    :cond_9
    invoke-static {}, Lcom/zoho/livechat/android/utils/SalesIQCache;->canShowOfflineMessage()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isConversationEnabled()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isArticlesAllowed()Z

    move-result p1

    if-nez p1, :cond_a

    new-instance p1, Lcom/zoho/livechat/android/comm/GetAppStatus;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAppID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/zoho/livechat/android/comm/GetAppStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_a
    return-void
.end method

.method private isMessageEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private refreshChatList()V
    .locals 6

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->messagesAdapter:Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getMessagesCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->changeCursor(Landroid/database/Cursor;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->clearContinueChat(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v3}, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->changeCursor(Landroid/database/Cursor;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    :goto_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->messagesAdapter:Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMessageLoadingView()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getChatMessagesParentView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->canShowConnectWithOperator()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getBotChatTransferLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getBotChatTransferAcceptLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$24;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$24;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getBotChatTransferCancelLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$25;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$25;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getBotChatTransferLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method private resetRecordAudioTimer()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioStartTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioProgress:I

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordTimeView()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private resetRecordAudioView()V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->setSendInputButtonState(Z)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordCancelLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setX(F)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordCancelLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordAudioParentView()Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getInputParentLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordAudioAnimView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordAudioAnimView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private saveMessageDraft()V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1, v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->setDraft(Ljava/lang/String;)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0, v1, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    :cond_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->sendMessage(Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void
.end method

.method private sendMessage(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "value"

    const-string v4, "type"

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object v5

    sget-object v6, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v5, v6, :cond_4

    iget-object v5, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v5}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getChatRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v5}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getChatRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "card_data"

    invoke-virtual {v7, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {v4, v7}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;-><init>(Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v4, v5}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getMessageType(I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v4

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v4, v6

    const/4 v8, 0x2

    :goto_1
    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    iget-object v5, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v9

    sget-object v5, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v5}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v5

    move-object v6, v0

    move-wide v10, v14

    move-wide v12, v14

    move-object/from16 v16, v4

    move-wide v3, v14

    move v14, v5

    invoke-direct/range {v6 .. v14}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v0

    if-eqz v16, :cond_2

    move-object/from16 v6, v16

    invoke-virtual {v0, v6}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setMetaInfo(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v3, v2, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object v2

    sget-object v3, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v2, v3, :cond_4

    new-instance v2, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;

    iget-object v3, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    move-object/from16 v3, p2

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->setMeta(Ljava/util/Hashtable;)V

    :cond_3
    invoke-virtual {v2}, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->process()V

    :cond_4
    return-void
.end method

.method private setActionButtonState()V
    .locals 3

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->canEnableActionButton()Z

    move-result v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getActionButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "#252b2e"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->applyColorToDrawable(Landroid/graphics/drawable/Drawable;I)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->shouldHideInput()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getActionLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getActionLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->applySelectableItemBackground(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getActionButton()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getActionLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getActionLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getActionLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getActionButton()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x3ec28f5c    # 0.38f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private setSendInputButtonState(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->canShowMic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendButton()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_mic_white:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "#252b2e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendButton()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_send:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->applyColorToDrawable(Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->canShowMic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->canEnableMic()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendLayout()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendLayout()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->applySelectableItemBackground(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendButton()Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x3f19999a    # 0.6f

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->canEnableSendButton()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendLayout()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendLayout()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->applySelectableItemBackground(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendButton()Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendLayout()Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendLayout()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendLayout()Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendButton()Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x3ec28f5c    # 0.38f

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private shouldHideInput()Z
    .locals 4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->isBotAttender()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getMessagesCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-direct {v2, v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->isInputCard()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->isBot()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result v0

    const/16 v3, 0x17

    if-ne v0, v3, :cond_2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->isInputCard()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private showFeedbackDialog()V
    .locals 4

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->is_feedback_dialog_shown:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->canShowFeedback()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowFeedback()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowRating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->is_feedback_dialog_shown:Z

    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zoho/livechat/android/R$style;->SalesIQ_WideDialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_bottomsheet_feedback:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v1, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;

    sget v2, Lcom/zoho/livechat/android/R$id;->siq_feedback_parent:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;-><init>(Landroid/view/View;)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1, v0, v2}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->render(Landroid/app/Dialog;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private startRecordAudioTimer()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioStartTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioProgress:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioTimerStarted:Z

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordTimeView()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioHandler:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startRecording()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordStarted:Z

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->startRecordAudioTimer()V

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd-hh_mm_ssaaa\'.mp3\'"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Voice_message-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    iget-object v2, v2, Lcom/zoho/livechat/android/utils/ImageUtils;->fileCache:Lcom/zoho/livechat/android/utils/FileCache;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/utils/FileCache;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordAudioAnimView()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->getInstance(Landroid/widget/RelativeLayout;Landroid/app/Activity;)Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    move-result-object v2

    iput-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->wavAudioRecorder:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->wavAudioRecorder:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->prepare()V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->wavAudioRecorder:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-virtual {v1, v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->setAnimate(Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->wavAudioRecorder:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->start()V

    return-void
.end method

.method private stopRecordAudioTimer()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioTimerStarted:Z

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioHandler:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private stopRecording()V
    .locals 1

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->stopRecordAudioTimer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordStarted:Z

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->wavAudioRecorder:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->stop()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->wavAudioRecorder:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->wavAudioRecorder:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->setSendInputButtonState(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public checkandshareScreenshot()V
    .locals 7

    :try_start_0
    sget-boolean v0, Lcom/zoho/livechat/android/constants/SystemUtil;->istakescreenshot:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/constants/SystemUtil;->screenurl:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zoho/livechat/android/constants/SystemUtil;->istakescreenshot:Z

    const-string v4, "image/jpg"

    sget-object v0, Lcom/zoho/livechat/android/constants/SystemUtil;->screenurl:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    sget-object v1, Lcom/zoho/livechat/android/constants/SystemUtil;->screenurl:Ljava/io/File;

    invoke-virtual {v0, v1, v3}, Lcom/zoho/livechat/android/utils/ImageUtils;->putImageInSdcard(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    sget-object v0, Lcom/zoho/livechat/android/constants/SystemUtil;->screenurl:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->shareImage(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v0, 0x0

    sput-object v0, Lcom/zoho/livechat/android/constants/SystemUtil;->screenurl:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public doSendMessage(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 12

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->sendMessage(Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    sget-object p1, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p1, p2, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const/4 v3, 0x1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v9

    const-string v2, "temp_chid"

    move-object v1, v0

    move-wide v5, v10

    move-wide v7, v10

    invoke-direct/range {v1 .. v9}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->refreshChatList()V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->makeAddVisitorRequest(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public endChatConfirmation()V
    .locals 3

    new-instance v0, Lb/b/k/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_messages_endchat_confirmation:I

    invoke-virtual {v0, v1}, Lb/b/k/g$a;->b(I)Lb/b/k/g$a;

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_messages_option_endchat:I

    new-instance v2, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    invoke-virtual {v0, v1, v2}, Lb/b/k/g$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_requestlog_negative_button:I

    new-instance v2, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$31;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$31;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    invoke-virtual {v0, v1, v2}, Lb/b/k/g$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    invoke-virtual {v0}, Lb/b/k/g$a;->a()Lb/b/k/g;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$32;

    invoke-direct {v1, p0, v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$32;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lb/b/k/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public getFileExtension(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mime_type"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->getFileExtension(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRecordAudioTimerCount()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioProgress:I

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadImageIds()V
    .locals 11

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImgPreviewLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->downloadedimageslist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v5, "CHATID =? AND TYPE =? "

    sget-object v2, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    const-string v3, "SIQ_MESSAGES"

    const/4 v4, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v8}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "STIME ASC"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-direct {v2, v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object v3

    sget-object v4, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getSize()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->downloadedimageslist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->downloadedimageslist:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->changeList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v0

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lb/x/a/a;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v0

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/ImagePager;->setPagingEnabled(Z)V

    return-void

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    :cond_5
    :goto_2
    return-void
.end method

.method public makeAddVisitorRequest(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 13

    move-object v7, p0

    move-object v8, p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, v7, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->deptId:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/zoho/livechat/android/utils/DepartmentsUtil;->getValidDepartments(ZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDeptid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDeptid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zoho/livechat/android/models/Department;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/Department;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setDeptid(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoho/livechat/android/models/Department;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/Department;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->setDeptname(Ljava/lang/String;)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    :goto_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChatConsentConfig()I

    move-result v0

    move-object v4, p2

    move/from16 v5, p3

    invoke-direct {p0, p1, p2, v0, v5}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->checkChatConsentAndCallAddVisitor(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;IZ)V

    goto/16 :goto_3

    :cond_2
    move-object v4, p2

    move/from16 v5, p3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    if-le v3, v2, :cond_3

    new-instance v2, Lcom/zoho/livechat/android/ui/adapters/DepartmentAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/zoho/livechat/android/ui/adapters/DepartmentAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    new-instance v0, Lb/b/k/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-direct {v0, v3}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v10

    invoke-virtual {v3, v1, v1, v1, v10}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v11, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v10}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v11, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/zoho/livechat/android/R$string;->livechat_messages_department:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v9}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v6

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v12

    invoke-static {v9}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v9

    invoke-virtual {v2, v6, v12, v9, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x11

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1
    iget-object v1, v0, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v2, v1, Landroidx/appcompat/app/AlertController$b;->f:Landroid/view/View;

    .line 2
    iput-object v3, v1, Landroidx/appcompat/app/AlertController$b;->q:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Lb/b/k/g$a;->a()Lb/b/k/g;

    move-result-object v9

    new-instance v10, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v11

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Landroid/widget/ListView;Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;ZLb/b/k/g;)V

    invoke-virtual {v11, v10}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;

    invoke-direct {v0, p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_3

    :cond_3
    iget-object v0, v7, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, v7, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v7, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0, v3, v4}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatMessage;->contenturi:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "1"

    aput-object v1, v5, v2

    const-string v1, "CHATID=? AND TYPE =? "

    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iput-object v6, v7, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeActiveChatPKID()V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;->contenturi:Landroid/net/Uri;

    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "CHATID=?"

    invoke-virtual {v0, v3, v4, v6, v5}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatMessage;->contenturi:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v0, v3, v4, v6, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_2
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->handleChat()V

    :goto_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    new-instance v0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lb/m/d/y;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->downloadedimageslist:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3, v4, p0}, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;-><init>(Lb/m/d/y;Landroid/app/Activity;Ljava/util/ArrayList;Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    check-cast v0, Lb/b/k/h;

    invoke-virtual {v0}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->m(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->p(Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->s(Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->o(Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->v(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "dept_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->deptId:Ljava/lang/String;

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->initChatView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->onBackPressed()Z

    :goto_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zoho/livechat/android/ChatActivityInterface;->handleWidgetAction(Z)V

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v4, -0x1

    if-nez v0, :cond_0

    if-ne v2, v4, :cond_b

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {v3, v0}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->getStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v3, v2, v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->shareConfirmation(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_7

    if-ne v2, v4, :cond_b

    sget-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->cameraimageuri:Landroid/net/Uri;

    if-eqz v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/zoho/livechat/android/utils/SalesIQCache;->cameraimageuri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/16 v0, 0x18

    if-lt v3, v0, :cond_1

    sget-object v0, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    sget-object v2, Lcom/zoho/livechat/android/utils/SalesIQCache;->cameraimageuri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/zoho/livechat/android/utils/SalesIQCache;->cameraimageuri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    new-instance v7, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$9;

    invoke-direct {v7, v1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$9;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    invoke-static {v2, v3, v4, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "emprops"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x989680

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    const-string v3, "allowedfsize"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    :cond_2
    :try_start_1
    sget-object v2, Lcom/zoho/livechat/android/utils/SalesIQCache;->cameraimageuri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v2, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {v2, v13, v14, v15}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/zoho/livechat/android/utils/ImageUtils;->checkImageDimension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v7, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v9, v3

    cmp-long v3, v11, v9

    if-gtz v3, :cond_6

    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/zoho/livechat/android/utils/ImageUtils;->getDimensions(II)Ljava/util/Hashtable;

    move-result-object v10

    new-instance v2, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object v7, v2

    move-wide/from16 p1, v14

    move-object v14, v3

    move-wide/from16 v15, p1

    invoke-direct/range {v7 .. v16}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;JLjava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-nez v4, :cond_3

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQChat;

    const-string v10, "temp_chid"

    const/4 v11, 0x0

    const/4 v14, 0x2

    move-object v9, v0

    move-wide/from16 v12, p1

    invoke-direct/range {v9 .. v14}, Lcom/zoho/livechat/android/models/SalesIQChat;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    sget v4, Lcom/zoho/livechat/android/R$string;->livechat_messages_sharefile_ques:I

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    sget-object v4, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v4, v3, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v3

    iput-object v3, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    new-instance v3, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const-string v8, "temp_chid"

    const/4 v9, 0x1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v11

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v13

    sget-object v4, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v15

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v3

    invoke-static {v2}, Lcom/zoho/livechat/android/config/LDChatConfig;->setFileMetaData(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V

    invoke-virtual {v1, v0, v3, v6}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->makeAddVisitorRequest(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_4

    iget-object v0, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    iget-object v0, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    sget v4, Lcom/zoho/livechat/android/R$string;->livechat_messages_sharefile_ques:I

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v4, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0, v3, v4}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {v2}, Lcom/zoho/livechat/android/config/LDChatConfig;->setFileMetaData(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChatConsentConfig()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->checkChatConsentAndCallJoinProactive(I)V

    goto/16 :goto_2

    :cond_4
    iget-object v4, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_5

    iget-object v0, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0, v6}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    iget-object v0, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    sget v4, Lcom/zoho/livechat/android/R$string;->livechat_messages_sharefile_ques:I

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v4, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0, v3, v4}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const-string v10, "temp_chid"

    const/4 v11, 0x1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v12

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v17

    move-object v9, v0

    move-wide/from16 v13, p1

    move-wide/from16 v15, p1

    invoke-direct/range {v9 .. v17}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    iget-object v3, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v0

    invoke-static {v2}, Lcom/zoho/livechat/android/config/LDChatConfig;->setFileMetaData(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V

    iget-object v2, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1, v2, v0, v6}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->makeAddVisitorRequest(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_2

    :cond_5
    new-instance v4, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    iget-object v6, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v12

    sget-object v6, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENDING:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v6}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v17

    move-object v9, v4

    move-wide/from16 v13, p1

    move-wide/from16 v15, p1

    invoke-direct/range {v9 .. v17}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setAttachment(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v2

    sget-object v4, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v4, v3, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-direct/range {p0 .. p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->refreshChatList()V

    invoke-direct/range {p0 .. p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->handleBottomView()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2, v5}, Lcom/zoho/livechat/android/utils/FileUploader;->uploadFile(Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->loadImageIds()V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_messages_info_filesizeexceed:I

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_7
    const/16 v2, 0x12d

    const/16 v4, 0x16

    if-ne v0, v2, :cond_9

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    if-le v3, v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-static {v2, v0}, Lb/i/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    const-string v2, "Select a File to Upload"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    const-string v2, "Please install a File Manager."

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    :goto_1
    invoke-static {v0}, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil;->addBlockPermission(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const/16 v2, 0x12e

    if-ne v0, v2, :cond_b

    const-string v0, "android.permission.CAMERA"

    if-le v3, v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-static {v2, v0}, Lb/i/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->takePicture()V

    goto :goto_2

    :cond_a
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_b
    :goto_2
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->clearUnreadCountInPrefs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->hideKeyboard(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImgPreviewLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->z()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImgPreviewLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getActionLayout()Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isFileSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lb/b/k/g$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-direct {v1, v2}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;

    invoke-direct {v2}, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowScreenshotOption()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/zoho/livechat/android/constants/SystemUtil;->istakescreenshot:Z

    if-nez v4, :cond_0

    new-instance v4, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;

    sget v5, Lcom/zoho/livechat/android/R$string;->livechat_messages_option_takescreenshot:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_screenshot:I

    invoke-direct {v4, v5, v6}, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->add(Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;)V

    :cond_0
    new-instance v4, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;

    sget v5, Lcom/zoho/livechat/android/R$string;->livechat_messages_option_takephoto:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_camera:I

    invoke-direct {v4, v5, v6}, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->add(Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;)V

    new-instance v4, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;

    sget v5, Lcom/zoho/livechat/android/R$string;->livechat_messages_option_sharefile:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_attach:I

    invoke-direct {v4, v5, v6}, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->add(Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;)V

    new-instance v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1
    invoke-direct {v4, v5, v3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 3
    iget-object v3, v1, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$b;->q:Landroid/view/View;

    .line 4
    new-instance v3, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;

    invoke-direct {v3, v0, v2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;)V

    invoke-virtual {v2, v3}, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->setDialogClickListener(Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$DialogClickListener;)V

    invoke-virtual {v1}, Lb/b/k/g$a;->a()Lb/b/k/g;

    move-result-object v1

    iput-object v1, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->fileShareAlertDialog:Lb/b/k/g;

    goto/16 :goto_0

    :cond_1
    iget-object v2, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendLayout()Landroid/widget/RelativeLayout;

    move-result-object v2

    if-ne v1, v2, :cond_b

    const-string v1, ""

    iput-object v1, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->prmsg:Ljava/lang/String;

    iget-object v2, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v6, 0x0

    if-nez v5, :cond_3

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v9, 0x0

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x2

    const-string v8, "temp_chid"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/zoho/livechat/android/models/SalesIQChat;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    sget-object v2, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v2, v4, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v3

    iput-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    new-instance v3, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const/4 v9, 0x1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v11

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v13

    sget-object v5, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v5}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v15

    const-string v8, "temp_chid"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-direct/range {p0 .. p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->refreshChatList()V

    invoke-virtual {v0, v1, v3, v6}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->makeAddVisitorRequest(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v5

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-ne v5, v7, :cond_7

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->creditCardMaskEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->hasCreditCardNumberOccurence(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v1, Lb/b/k/g$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-direct {v1, v3}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_creditcardmask:I

    invoke-virtual {v1, v3}, Lb/b/k/g$a;->b(I)Lb/b/k/g$a;

    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_creditcardmask_ok:I

    new-instance v4, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$5;

    invoke-direct {v4, v0, v2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$5;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lb/b/k/g$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_creditcardmask_cancel:I

    new-instance v4, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$6;

    invoke-direct {v4, v0, v2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$6;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lb/b/k/g$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    invoke-virtual {v1}, Lb/b/k/g$a;->a()Lb/b/k/g;

    move-result-object v1

    new-instance v2, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$7;

    invoke-direct {v2, v0, v1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$7;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lb/b/k/g;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :goto_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    :cond_4
    iget-object v5, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getLastMessage(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQMessage;->isBot()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMetaInfo()Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getDisplayCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->getValidate()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->validate(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->getError()Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-eqz v8, :cond_6

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3, v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->setDraft(Ljava/lang/String;)V

    sget-object v3, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v5, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3, v4, v5}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->sendMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_7
    iget-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v3

    const/4 v5, 0x4

    const/4 v7, 0x2

    if-ne v3, v5, :cond_8

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3, v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->setDraft(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1, v7}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    iget-object v1, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    sget-object v1, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v2, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1, v4, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChatConsentConfig()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->checkChatConsentAndCallJoinProactive(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_9

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3, v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->setDraft(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1, v8}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    iget-object v1, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    sget-object v1, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v2, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1, v4, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v5, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const/4 v9, 0x1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v10

    sget-object v7, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v7}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v15

    const-string v8, "temp_chid"

    move-object v7, v5

    move-wide v11, v2

    move-wide v13, v2

    invoke-direct/range {v7 .. v15}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    iget-object v7, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v7}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v5

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-direct/range {p0 .. p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->refreshChatList()V

    iget-object v1, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0, v1, v2, v6}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->makeAddVisitorRequest(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_1

    :cond_9
    iget-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v3

    if-eq v3, v7, :cond_a

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v3

    if-ne v3, v8, :cond_b

    :cond_a
    iget-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3, v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->setDraft(Ljava/lang/String;)V

    sget-object v3, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v5, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3, v4, v5}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    iget-object v5, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v5}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    new-instance v5, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    iget-object v6, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v9

    sget-object v6, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v6}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v16

    move-object v6, v5

    move-wide v10, v14

    move-wide v12, v14

    move-object/from16 v17, v3

    move-object/from16 p1, v4

    move-wide v3, v14

    move/from16 v14, v16

    invoke-direct/range {v6 .. v14}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {v5, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-virtual {v3, v2, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object v2

    sget-object v3, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v2, v3, :cond_b

    iget-object v2, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "temp_chid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-virtual {v2}, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->process()V

    :cond_b
    :goto_1
    return-void
.end method

.method public onContinueChat()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->canShowContinueChat()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->is_feedback_dialog_shown:Z

    iget-object v2, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v2, v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->showContinueChat(Z)V

    sget-object v2, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v2, v3, v4}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChat(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v3

    iget-object v4, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v7, 0x0

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x2

    const-string v6, "temp_chid"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/zoho/livechat/android/models/SalesIQChat;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v11, v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDeptid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->setDeptid(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDeptname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->setDeptname(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v2, v4, v11}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v4

    iput-object v4, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    new-instance v4, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const/4 v14, 0x1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v16

    invoke-virtual {v11}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v18

    sget-object v5, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v5}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v20

    const-string v13, "temp_chid"

    move-object v12, v4

    invoke-direct/range {v12 .. v20}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {v11}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v4

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v4

    invoke-virtual {v11}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    new-instance v2, Lcom/zoho/livechat/android/comm/PXRAddVisitor;

    invoke-direct {v2, v3, v4, v1, v1}, Lcom/zoho/livechat/android/comm/PXRAddVisitor;-><init>(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;ZZ)V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object v1

    sget-object v3, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v1, v3, :cond_0

    invoke-virtual {v2}, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->request()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/zoho/livechat/android/config/LDChatConfig;->setAddVisitRequest(Lcom/zoho/livechat/android/comm/PXRAddVisitor;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->connectToWMS()V

    :goto_0
    const-string v1, "temp_chid"

    invoke-direct {v0, v1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->initChatView(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    :try_start_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImgPreviewLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x15

    if-nez v1, :cond_1

    sget v1, Lcom/zoho/livechat/android/R$menu;->siq_menu_chat_imagepreview:I

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "#99000000"

    if-lt v0, v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->m(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->v(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v3, 0x6

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    sget v1, Lcom/zoho/livechat/android/R$menu;->siq_menu_chat:I

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p2

    if-ne p2, v3, :cond_3

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x1

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_messages_email_title:I

    const/4 v3, 0x0

    invoke-interface {p1, v3, p2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_3
    :goto_0
    if-lt v0, v2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColorDark(Landroid/app/Activity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchNavigationBarColor(Landroid/app/Activity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_4
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->m(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->setTitle()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->handleStartChatView()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget p3, Lcom/zoho/livechat/android/R$layout;->siq_fragment_chat:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-direct {p2, p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_parent_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge p3, v1, :cond_0

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/utils/FileDownloader;->removeAllListener()V

    return-void
.end method

.method public onEmailTranscriptClick()V
    .locals 8

    new-instance v0, Lb/b/k/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v4

    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v6

    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getEmail()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->setEditTextBackgroundColor(Landroid/widget/EditText;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1
    iget-object v3, v0, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v3, Landroidx/appcompat/app/AlertController$b;->q:Landroid/view/View;

    .line 2
    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_messages_email_dialog_title:I

    .line 3
    iget-object v4, v3, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    .line 4
    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_messages_email_send:I

    new-instance v3, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;

    invoke-direct {v3, p0, v2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v3}, Lb/b/k/g$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$12;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$12;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    .line 5
    iget-object v2, v0, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$b;->m:Landroid/content/DialogInterface$OnDismissListener;

    .line 6
    invoke-virtual {v0}, Lb/b/k/g$a;->a()Lb/b/k/g;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$13;

    invoke-direct {v1, p0, v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$13;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lb/b/k/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onFileClick(Ljava/io/File;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".siqfileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lb/i/f/b;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "*/*"

    goto :goto_1

    :cond_1
    const-string v2, "text/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "text/*"

    :cond_2
    :goto_1
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_messages_attachment_notopen:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getTimerLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onImageClick(Lcom/zoho/livechat/android/models/SalesIQMessage;Landroid/graphics/Rect;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->hideKeyboard(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->setBottomVisibleWithoutAnim(Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getID()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v0, v2, v3}, Lcom/zoho/livechat/android/ui/ImagePager;->setScrollDurationFactor(D)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;

    invoke-virtual {v0}, Lb/x/a/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v0

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->downloadedimageslist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getID()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget v2, v0, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget v2, v0, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    :goto_0
    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setPivotY(F)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4}, Lcom/zoho/livechat/android/ui/ImagePager;->setScrollDurationFactor(D)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v3

    sget-object v4, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    iget v7, p2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    aput v7, v6, v1

    iget v7, p1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    const/4 v8, 0x1

    aput v7, v6, v8

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v4

    sget-object v6, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v7, v5, [F

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    aput p2, v7, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    aput p1, v7, v8

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object p2

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v5, [F

    aput v0, v4, v1

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v8

    invoke-static {p2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object p2

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v5, [F

    aput v0, v4, v1

    aput v6, v4, v8

    invoke-static {p2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 p1, 0xc8

    invoke-virtual {v2, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$10;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$10;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v3

    const-string v4, "alpha"

    new-array v7, v8, [F

    aput v6, v7, v1

    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p2, v5, [Landroid/animation/Animator;

    aput-object v2, p2, v1

    aput-object v0, p2, v8

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mCurrentAnimator:Landroid/animation/Animator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onImageDownloadSuccess()V
    .locals 0

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->loadImageIds()V

    return-void
.end method

.method public onMessageLongClick(Lcom/zoho/livechat/android/models/SalesIQMessage;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_messages_action_copy_success:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public onNetworkChange(Z)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return v1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/zoho/livechat/android/R$id;->share_image:I

    if-ne v0, v2, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->shareImage()V

    return v1

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/zoho/livechat/android/R$id;->siq_end_chat:I

    if-ne v0, v2, :cond_3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->endChatConfirmation()V

    :cond_2
    return v1

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->onEmailTranscriptClick()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public onPagingDisable()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/ImagePager;->setPagingEnabled(Z)V

    return-void
.end method

.method public onPagingEnable()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/ImagePager;->setPagingEnabled(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->hideKeyboard(Landroid/view/View;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zoho/livechat/android/ChatActivityInterface;->handleWidgetAction(Z)V

    :cond_0
    const-string v0, "temp_chid"

    invoke-static {v1, v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->setChatUILive(ZLjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->livechatreceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lb/q/a/a;->d(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->endChatTimer:Lcom/zoho/livechat/android/ui/EndChatTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->saveMessageDraft()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->closeMediaPlayer()V

    return-void
.end method

.method public onRequestLog()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/RequestLogUtil;->requestlogstring()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/ui/RequestLogDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    new-instance v3, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$14;

    invoke-direct {v3, p0, v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$14;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Ljava/util/ArrayList;)V

    invoke-direct {v1, v2, v3}, Lcom/zoho/livechat/android/ui/RequestLogDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v0}, Lcom/zoho/livechat/android/ui/RequestLogDialog;->init(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/zoho/livechat/android/ui/RequestLogDialog;->showDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x12d

    if-ne p1, v2, :cond_1

    array-length p1, p2

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    if-lt p1, v0, :cond_0

    aget-object p1, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    aget p1, p3, v1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "*/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string p2, "Select a File to Upload"

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const-string p2, "Please install a File Manager."

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    invoke-static {v2}, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil;->addBlockPermission(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x12e

    if-ne p1, v2, :cond_3

    array-length p1, p2

    const-string v2, "android.permission.CAMERA"

    if-lt p1, v0, :cond_2

    aget-object p1, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    aget p1, p3, v1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->takePicture()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getPkid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getPkid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "UI | ChatFragment | onresume: pkid is not null"

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM SIQ_CONVERSATIONS WHERE _id = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getPkid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v3, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v3, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-direct {v3, v0}, Lcom/zoho/livechat/android/models/SalesIQChat;-><init>(Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    :goto_0
    :try_start_2
    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_2
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    :goto_4
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->refreshChatList()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->handleBottomView()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->showFeedbackDialog()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_5

    :cond_3
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_4
    const-string v3, "temp_chid"

    :goto_5
    invoke-static {v0, v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->setChatUILive(ZLjava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->livechatreceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "receivelivechat"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lb/q/a/a;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_6

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$PushNotification;->contenturi:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v1, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/NotificationService;->cancelAll(Landroid/content/Context;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->clearUnreadCountInPrefs()V

    :cond_6
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEndChatTimerTimeRemaining()I

    move-result v0

    if-lez v0, :cond_7

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->handleEndChatStartTimer()V

    goto :goto_6

    :cond_7
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeTimerPreferences()V

    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDraft()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDraft()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDraft()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScale()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;

    iget-boolean v1, v0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->isbottomvisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->setBottomVisible(Z)V

    :cond_0
    return-void
.end method

.method public onSingleTouch()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;

    iget-boolean v1, v0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->isbottomvisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->setBottomVisible(Z)V

    return-void
.end method

.method public onSuggestionClick(Ljava/lang/String;)V
    .locals 13

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->sendMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1, p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    sget-object p1, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p1, v0, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v1, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const/4 v4, 0x1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v10

    const-string v3, "temp_chid"

    move-object v2, v1

    move-wide v6, v11

    move-wide v8, v11

    invoke-direct/range {v2 .. v10}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->refreshChatList()V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->makeAddVisitorRequest(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->prmsg:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->predictHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->predictHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onTick(I)V
    .locals 6

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getTimerLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_messages_endchattimer:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%1$s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    new-instance v4, Landroid/text/SpannableString;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string v0, "#D6473F"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x12

    invoke-virtual {v4, p1, v2, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getTimerTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->isMessageEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x1

    if-eqz v1, :cond_b

    const/4 p1, 0x6

    if-eq v1, v4, :cond_8

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->wavAudioRecorder:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-double v5, v1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v5, v7

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->wavAudioRecorder:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->setAnimate(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->wavAudioRecorder:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-virtual {v1, v4}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->setAnimate(Z)V

    :cond_2
    :goto_0
    iget v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->audioRecordTouchStartX:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    sub-float/2addr v1, p2

    float-to-int p2, v1

    const/4 v1, 0x0

    if-lez p2, :cond_7

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordCancelLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    neg-int v3, p2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setX(F)V

    iget v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->audioRecordThresholdX:I

    sub-int p2, v2, p2

    int-to-float p2, p2

    int-to-float v2, v2

    div-float/2addr p2, v2

    cmpg-float v1, p2, v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v1

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordCancelLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    goto :goto_3

    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordStarted:Z

    if-nez p1, :cond_5

    return v4

    :cond_5
    const/16 p1, 0x1a

    const-wide/16 v1, 0x96

    const-string p2, "vibrator"

    if-lt v0, p1, :cond_6

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const/16 p2, 0xa

    invoke-static {v1, v2, p2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->stopRecording()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->resetRecordAudioTimer()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x64

    add-long v7, p1, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendLayout()Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v4

    :cond_7
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordCancelLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setX(F)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordCancelLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_6

    :cond_8
    iget-boolean p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordStarted:Z

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->stopRecording()V

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->getRecordAudioTimerCount()I

    move-result p2

    if-lt p2, v4, :cond_a

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p2

    if-ne p2, p1, :cond_9

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->resetRecordAudioView()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->resetRecordAudioTimer()V

    return v4

    :cond_9
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const/4 p1, 0x0

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$28;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$28;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    invoke-static {p2, v0, p1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    sget-object p1, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    :try_start_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->recordAudioUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->getStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result p1

    int-to-long v9, p1

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->shareFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_4
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->resetRecordAudioTimer()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->resetRecordAudioView()V

    goto :goto_6

    :cond_b
    const/16 v1, 0x16

    if-le v0, v1, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Lb/i/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil;->containsBlockPermission(Ljava/lang/String;)Z

    move-result p1

    const/16 p2, 0x131

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_permission_recording:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil;->getAlertDialog(Landroid/app/Activity;ILjava/lang/String;)Lb/b/k/g;

    move-result-object p1

    new-instance p2, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$27;

    invoke-direct {p2, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$27;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lb/i/e/a;->f(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_5
    return v4

    :cond_d
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordAudioParentView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->chatViewHolder:Lcom/zoho/livechat/android/ui/ChatViewHolder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getInputParentLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->audioRecordTouchStartX:I

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p2, p1

    const/high16 p1, 0x40800000    # 4.0f

    div-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->audioRecordThresholdX:I

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->startRecording()V

    :goto_6
    return v4

    :cond_e
    return v2
.end method

.method public setTitle()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->x(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_conversation_missedchat:I

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->w(I)V

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_conversation_waiting:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEmbedStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->mActionBar:Landroidx/appcompat/app/ActionBar;

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_messages_title:I

    goto :goto_1

    :goto_3
    return-void
.end method

.method public shareConfirmation(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 14

    move-object v0, p1

    move-object/from16 v5, p2

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sget v2, Lcom/zoho/livechat/android/R$layout;->siq_image_preview:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sget v1, Lcom/zoho/livechat/android/R$id;->siq_imagepreview:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/zoho/livechat/android/R$id;->siq_imgpreview_back:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v6, Lcom/zoho/livechat/android/R$id;->siq_imagepreview_send_layout:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/widget/FrameLayout;

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1
    sget-object v8, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    sget v6, Lcom/zoho/livechat/android/R$id;->siq_imagepreview_send_icon:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_send:I

    const/4 v10, -0x1

    invoke-static {v8, v9, v10}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->changeDrawableColor(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v6, Lcom/zoho/livechat/android/R$id;->siq_imgpreview_title:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v8, Lc/e/a/b/c$b;

    invoke-direct {v8}, Lc/e/a/b/c$b;-><init>()V

    .line 3
    iput-boolean v7, v8, Lc/e/a/b/c$b;->h:Z

    .line 4
    iput-boolean v7, v8, Lc/e/a/b/c$b;->i:Z

    .line 5
    iput-boolean v7, v8, Lc/e/a/b/c$b;->m:Z

    .line 6
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v8, v7}, Lc/e/a/b/c$b;->a(Landroid/graphics/Bitmap$Config;)Lc/e/a/b/c$b;

    invoke-virtual {v8}, Lc/e/a/b/c$b;->b()Lc/e/a/b/c;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->available()I

    move-result v8

    int-to-long v8, v8

    const-string v10, "img"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "jpg"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "jpeg"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "gif"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "png"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    sget v7, Lcom/zoho/livechat/android/R$string;->livechat_messages_option_sharefile:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    sget v6, Lcom/zoho/livechat/android/R$drawable;->salesiq_fileicon:I

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v10, p3

    goto :goto_1

    :cond_1
    :goto_0
    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_messages_shareimage:I

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    sget-object v3, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    move-object/from16 v10, p3

    invoke-virtual {v3, v10, p1}, Lcom/zoho/livechat/android/utils/ImageUtils;->writeImageToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v3, v6, p1}, Lcom/zoho/livechat/android/utils/ImageUtils;->putImageInSdcard(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object v6

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getFilePathForImageloader(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12, v1, v7}, Lc/e/a/b/d;->c(Ljava/lang/String;Landroid/widget/ImageView;Lc/e/a/b/c;)V

    :goto_1
    move-object v6, v3

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getDeviceHeight()I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getDeviceWidth()I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, 0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x128

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    const-string v7, "window"

    invoke-virtual {v3, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3, v4, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v12, p0

    :try_start_1
    invoke-direct {v1, p0, v3, v4}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$2;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v13, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v5, p2

    move-object v7, p1

    move-object/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$3;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Landroid/view/WindowManager;Landroid/view/View;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLjava/io/InputStream;)V

    invoke-virtual {v11, v13}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v12, p0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public shareFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 23

    move-object/from16 v1, p0

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "emprops"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x989680

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const-string v2, "allowedfsize"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    cmp-long v4, p4, v2

    if-gtz v4, :cond_5

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v2, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v14, v15}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v12, p3

    invoke-virtual {v2, v12, v4}, Lcom/zoho/livechat/android/utils/ImageUtils;->putFileinCache(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v13

    move-object/from16 v5, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p1

    move-object v11, v2

    move-object v3, v13

    move-wide v12, v14

    invoke-direct/range {v4 .. v13}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;JLjava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v4, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v13, 0x1

    if-nez v4, :cond_1

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQChat;

    const-string v4, "temp_chid"

    const/4 v5, 0x0

    const/4 v8, 0x2

    move-object v11, v3

    move-object v3, v0

    move-wide v6, v14

    invoke-direct/range {v3 .. v8}, Lcom/zoho/livechat/android/models/SalesIQChat;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_messages_sharefile_ques:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    sget-object v2, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v2, v12, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v2

    iput-object v2, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    new-instance v2, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const-string v15, "temp_chid"

    const/16 v16, 0x1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v18

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v20

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v22

    move-object v14, v2

    invoke-direct/range {v14 .. v22}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v2

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v2

    invoke-static {v11}, Lcom/zoho/livechat/android/config/LDChatConfig;->setFileMetaData(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V

    invoke-virtual {v1, v0, v2, v13}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->makeAddVisitorRequest(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_1

    :cond_1
    move-object v11, v3

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    iget-object v0, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    iget-object v0, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_messages_sharefile_ques:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v2, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0, v12, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {v11}, Lcom/zoho/livechat/android/config/LDChatConfig;->setFileMetaData(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChatConsentConfig()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->checkChatConsentAndCallJoinProactive(I)V

    goto/16 :goto_1

    :cond_2
    iget-object v3, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    iget-object v0, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0, v13}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    iget-object v0, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_messages_sharefile_ques:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v2, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0, v12, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const-string v4, "temp_chid"

    const/4 v5, 0x1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v2

    move-object v3, v0

    move-wide v7, v14

    move-wide v9, v14

    move-object v12, v11

    move v11, v2

    invoke-direct/range {v3 .. v11}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    iget-object v2, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v0

    invoke-static {v12}, Lcom/zoho/livechat/android/config/LDChatConfig;->setFileMetaData(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V

    iget-object v2, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1, v2, v0, v13}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->makeAddVisitorRequest(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_1

    :cond_3
    move-object v13, v11

    const-string v3, "audio"

    move-object/from16 v5, p2

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x7

    const/4 v5, 0x7

    goto :goto_0

    :cond_4
    const/4 v5, 0x4

    :goto_0
    new-instance v11, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    iget-object v3, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v6

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENDING:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v16

    move-object v3, v11

    move-wide v7, v14

    move-wide v9, v14

    move-object v0, v11

    move/from16 v11, v16

    invoke-direct/range {v3 .. v11}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setAttachment(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v0

    sget-object v3, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v3, v12, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-direct/range {p0 .. p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->refreshChatList()V

    invoke-direct/range {p0 .. p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->handleBottomView()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v4}, Lcom/zoho/livechat/android/utils/FileUploader;->uploadFile(Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->loadImageIds()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_messages_info_filesizeexceed:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :goto_3
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    throw v2
.end method

.method public shareImage(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 17

    move-object/from16 v1, p0

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "emprops"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x989680

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const-string v2, "allowedfsize"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x0

    cmp-long v4, p4, v2

    if-gtz v4, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v2, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3, v14, v15}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    move-object/from16 v4, p1

    invoke-virtual {v4, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v13, 0x1

    iput-boolean v13, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v13, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v13, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v2, v5, v4}, Lcom/zoho/livechat/android/utils/ImageUtils;->getDimensions(II)Ljava/util/Hashtable;

    move-result-object v7

    new-instance v2, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    const/4 v6, 0x0

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    move-object v4, v2

    move-object/from16 v5, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p2

    move-object/from16 v16, v12

    const/4 v3, 0x1

    move-wide v12, v14

    invoke-direct/range {v4 .. v13}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;JLjava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v4, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-nez v4, :cond_1

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQChat;

    const-string v4, "temp_chid"

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v13, 0x1

    move-object v3, v0

    move-wide v6, v14

    invoke-direct/range {v3 .. v8}, Lcom/zoho/livechat/android/models/SalesIQChat;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_messages_sharefile_ques:I

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    sget-object v3, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v3, v12, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v3

    iput-object v3, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    new-instance v3, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const-string v5, "temp_chid"

    const/4 v6, 0x1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v10

    sget-object v4, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v12

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v3

    invoke-static {v2}, Lcom/zoho/livechat/android/config/LDChatConfig;->setFileMetaData(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V

    invoke-virtual {v1, v0, v3, v13}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->makeAddVisitorRequest(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_0

    :cond_1
    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    iget-object v0, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    iget-object v0, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_messages_sharefile_ques:I

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v3, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0, v12, v3}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {v2}, Lcom/zoho/livechat/android/config/LDChatConfig;->setFileMetaData(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChatConsentConfig()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->checkChatConsentAndCallJoinProactive(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v3, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget-object v0, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0, v13}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    iget-object v0, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_messages_sharefile_ques:I

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v3, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0, v12, v3}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const-string v4, "temp_chid"

    const/4 v5, 0x1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v6

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v11

    move-object v3, v0

    move-wide v7, v14

    move-wide v9, v14

    invoke-direct/range {v3 .. v11}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    iget-object v3, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v0

    invoke-static {v2}, Lcom/zoho/livechat/android/config/LDChatConfig;->setFileMetaData(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V

    iget-object v2, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1, v2, v0, v13}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->makeAddVisitorRequest(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto :goto_0

    :cond_3
    new-instance v13, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    iget-object v3, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v6

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENDING:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v11

    move-object v3, v13

    move-wide v7, v14

    move-wide v9, v14

    invoke-direct/range {v3 .. v11}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setAttachment(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v2

    sget-object v3, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v3, v12, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-direct/range {p0 .. p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->refreshChatList()V

    invoke-direct/range {p0 .. p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->handleBottomView()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/zoho/livechat/android/utils/FileUploader;->uploadFile(Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->loadImageIds()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_messages_info_filesizeexceed:I

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public takePicture()V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "photo_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    const/16 v3, 0x18

    const/4 v4, 0x1

    if-lt v0, v3, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".siqfileprovider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lb/i/f/b;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    sput-object v2, Lcom/zoho/livechat/android/utils/SalesIQCache;->cameraimageuri:Landroid/net/Uri;

    const-string v3, "output"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1, v4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    nop

    const/16 v1, 0x16

    if-le v0, v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Lb/i/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil;->containsBlockPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_permission_camera:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil;->getAlertDialog(Landroid/app/Activity;ILjava/lang/String;)Lb/b/k/g;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$8;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$8;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12e

    invoke-static {v0, v1, v2}, Lb/i/e/a;->f(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    :catch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_messages_camera_notopen:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method
