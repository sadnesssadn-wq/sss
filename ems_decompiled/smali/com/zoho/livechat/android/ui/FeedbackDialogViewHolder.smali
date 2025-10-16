.class public Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private chat:Lcom/zoho/livechat/android/models/SalesIQChat;

.field private dialog:Landroid/app/Dialog;

.field private feedbackInputView:Landroid/widget/EditText;

.field private happyIconView:Landroid/widget/ImageView;

.field private happyLayout:Landroid/widget/LinearLayout;

.field private happyTextView:Landroid/widget/TextView;

.field private headingView:Landroid/widget/TextView;

.field private neutralIconView:Landroid/widget/ImageView;

.field private neutralLayout:Landroid/widget/LinearLayout;

.field private neutralTextView:Landroid/widget/TextView;

.field private parentView:Landroid/widget/LinearLayout;

.field private rating_level:I

.field private ratingparent:Landroid/widget/LinearLayout;

.field private sadIconView:Landroid/widget/ImageView;

.field private sadLayout:Landroid/widget/LinearLayout;

.field private sadTextView:Landroid/widget/TextView;

.field private submitLayout:Landroid/widget/RelativeLayout;

.field private submitTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->rating_level:I

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_feedback_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->parentView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->getFeedbackBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 1
    sget-object v2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    sget v0, Lcom/zoho/livechat/android/R$id;->siq_feedback_heading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->headingView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_rating_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->ratingparent:Landroid/widget/LinearLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_rating_sad_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->sadLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_rating_neutral_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->neutralLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_rating_happy_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->happyLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_rating_sad_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->sadIconView:Landroid/widget/ImageView;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_rating_neutral_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->neutralIconView:Landroid/widget/ImageView;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_rating_happy_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->happyIconView:Landroid/widget/ImageView;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_rating_sad_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->sadTextView:Landroid/widget/TextView;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_rating_neutral_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->neutralTextView:Landroid/widget/TextView;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_rating_happy_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->happyTextView:Landroid/widget/TextView;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_feedback_edittext:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->feedbackInputView:Landroid/widget/EditText;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_feedback_submit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->submitLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->getSubmitBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    sget v0, Lcom/zoho/livechat/android/R$id;->siq_feedback_submit_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->submitTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->setRatingSelection(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->handleSubmitBackground()V

    return-void
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->closeAndSendFeedback(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->feedbackInputView:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->sadIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->neutralIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->happyIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private closeAndSendFeedback(Ljava/lang/String;)V
    .locals 13

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getLastOperatorMessage(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v12, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v9

    move-object v1, v12

    move-object v4, v0

    move-wide v5, v10

    move-wide v7, v10

    invoke-direct/range {v1 .. v9}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isBotSender(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setIsBot(Z)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    iget v2, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->rating_level:I

    invoke-direct {v1, v2, p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setAttachmentInfo(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->parentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v2, v1, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SHOW_FEEDBACK"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;->contenturi:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "CHATID=?"

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;

    iget v1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->rating_level:I

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "receivelivechat"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "message"

    const-string v1, "refreshchat"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "movetolast"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private getFeedbackBackground()Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x41400000    # 12.0f

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

    const/4 v1, 0x4

    const/4 v3, 0x0

    aput v3, v2, v1

    const/4 v1, 0x5

    aput v3, v2, v1

    const/4 v1, 0x6

    aput v3, v2, v1

    const/4 v1, 0x7

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private getSubmitBackground()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->parentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private handleSubmitBackground()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->submitLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowRating()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->rating_level:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->feedbackInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->submitLayout:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->submitLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$5;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$5;-><init>(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->submitLayout:Landroid/widget/RelativeLayout;

    const v1, 0x3ec28f5c    # 0.38f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->submitLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private setRatingSelection(I)V
    .locals 9

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->rating_level:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->rating_level:I

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->sadIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->sadIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->neutralIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->neutralIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->happyIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->happyIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->sadTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->sadTextView:Landroid/widget/TextView;

    const-string v2, "#6e7175"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->neutralTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->neutralTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->happyTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->happyTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "#252b2e"

    const-wide/16 v2, 0xc8

    const/high16 v4, 0x42700000    # 60.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    new-array p1, v6, [I

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    aput v0, p1, v5

    invoke-static {v4}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    aput v0, p1, v7

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$6;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$6;-><init>(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->sadTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->sadTextView:Landroid/widget/TextView;

    :goto_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    const/4 v8, 0x3

    if-ne p1, v8, :cond_2

    new-array p1, v6, [I

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    aput v0, p1, v5

    invoke-static {v4}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    aput v0, p1, v7

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$7;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$7;-><init>(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->neutralTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->neutralTextView:Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    const/4 v8, 0x5

    if-ne p1, v8, :cond_3

    new-array p1, v6, [I

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    aput v0, p1, v5

    invoke-static {v4}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    aput v0, p1, v7

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$8;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$8;-><init>(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->happyTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->happyTextView:Landroid/widget/TextView;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public render(Landroid/app/Dialog;Lcom/zoho/livechat/android/models/SalesIQChat;)V
    .locals 4

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->dialog:Landroid/app/Dialog;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowRating()Z

    move-result p1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowFeedback()Z

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->ratingparent:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->headingView:Landroid/widget/TextView;

    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_feedback_rating_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, v1}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->setRatingSelection(I)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->sadLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$1;

    invoke-direct {v3, p0, p2}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$1;-><init>(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->neutralLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$2;

    invoke-direct {v3, p0, p2}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$2;-><init>(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->happyLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$3;

    invoke-direct {v3, p0, p2}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$3;-><init>(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->feedbackInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->submitLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->handleSubmitBackground()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->headingView:Landroid/widget/TextView;

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_feedback_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->feedbackInputView:Landroid/widget/EditText;

    new-instance v1, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$4;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$4;-><init>(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->feedbackInputView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->submitLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->parentView:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->hideKeyboard(Landroid/view/View;)V

    :goto_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->headingView:Landroid/widget/TextView;

    sget p2, Lcom/zoho/livechat/android/R$string;->livechat_feedback_both_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method
