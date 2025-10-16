.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordAudioHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$2400(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)I

    move-result p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$2500(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)I

    move-result v0

    const-wide/16 v1, 0x64

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$2600(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UTC"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "m:ss.SS"

    invoke-direct {v0, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v5}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$2700(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {p1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/ChatViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getRecordTimeView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$2408(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)I

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$2800(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$2400(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)I

    move-result p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$2500(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)I

    move-result v0

    if-lt p1, v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$RecordAudioHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/ChatViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getSendLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
