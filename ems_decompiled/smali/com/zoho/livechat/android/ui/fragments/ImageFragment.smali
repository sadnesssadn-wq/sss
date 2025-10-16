.class public Lcom/zoho/livechat/android/ui/fragments/ImageFragment;
.super Landroidx/fragment/app/Fragment;
.source ""


# static fields
.field public static isbottomvisible:Z = false

.field private static listener:Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;


# instance fields
.field public displayImageOptions:Lc/e/a/b/c;

.field public id:Ljava/lang/String;

.field private imagezoombottom:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->id:Ljava/lang/String;

    return-void
.end method

.method private clearTimes(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-object p1
.end method

.method private getDayOfWeek(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string p1, "Unknown"

    return-object p1

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_day_saturday:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_day_friday:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_day_thursday:I

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_day_wednesday:I

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_day_tuesday:I

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_day_monday:I

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_day_sunday:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newInstance(Ljava/lang/String;Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;)Lcom/zoho/livechat/android/ui/fragments/ImageFragment;
    .locals 3

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;

    invoke-direct {v0}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sput-object p1, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->listener:Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;

    return-object v0
.end method


# virtual methods
.method public getDateDiff(Ljava/lang/Long;)Ljava/lang/String;
    .locals 11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->clearTimes(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    invoke-direct {p0, v1}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->clearTimes(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->add(II)V

    invoke-direct {p0, v3}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->clearTimes(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, -0x3

    invoke-virtual {v4, v2, v5}, Ljava/util/Calendar;->add(II)V

    invoke-direct {p0, v4}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->clearTimes(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, -0x4

    invoke-virtual {v5, v2, v6}, Ljava/util/Calendar;->add(II)V

    invoke-direct {p0, v5}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->clearTimes(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, -0x5

    invoke-virtual {v6, v2, v7}, Ljava/util/Calendar;->add(II)V

    invoke-direct {p0, v6}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->clearTimes(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, -0x6

    invoke-virtual {v7, v2, v8}, Ljava/util/Calendar;->add(II)V

    invoke-direct {p0, v7}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->clearTimes(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_day_today:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v9, v7, v0

    if-lez v9, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_day_yesterday:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v9, 0x7

    cmp-long v10, v0, v7

    if-lez v10, :cond_2

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->getDayOfWeek(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-lez v3, :cond_3

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->getDayOfWeek(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v7, v0, v3

    if-lez v7, :cond_4

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->getDayOfWeek(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-lez v5, :cond_5

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->getDayOfWeek(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-lez v5, :cond_6

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->getDayOfWeek(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->getFormattedDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFormattedDate(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd, yy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTime(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm aa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->id:Ljava/lang/String;

    new-instance p1, Lc/e/a/b/c$b;

    invoke-direct {p1}, Lc/e/a/b/c$b;-><init>()V

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Lc/e/a/b/c$b;->h:Z

    .line 2
    iput-boolean v0, p1, Lc/e/a/b/c$b;->i:Z

    .line 3
    iput-boolean v0, p1, Lc/e/a/b/c$b;->m:Z

    .line 4
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0}, Lc/e/a/b/c$b;->a(Landroid/graphics/Bitmap$Config;)Lc/e/a/b/c$b;

    invoke-virtual {p1}, Lc/e/a/b/c$b;->b()Lc/e/a/b/c;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->displayImageOptions:Lc/e/a/b/c;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p3, Lcom/zoho/livechat/android/R$layout;->siq_image_preview_bottom:I

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->imagezoombottom:Landroid/view/View;

    sget p3, Lcom/zoho/livechat/android/R$id;->siq_imagesender:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->imagezoombottom:Landroid/view/View;

    sget v2, Lcom/zoho/livechat/android/R$id;->siq_imagesenttime:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sget-boolean v2, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->isbottomvisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->imagezoombottom:Landroid/view/View;

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->imagezoombottom:Landroid/view/View;

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const-string v2, ""

    const-wide/16 v3, 0x0

    :try_start_0
    sget-object v5, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM SIQ_MESSAGES WHERE _id = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-direct {v5, v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getSize()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v3

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v8

    const-string v9, "$"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/zoho/livechat/android/R$string;->livechat_messages_you:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getDname()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->getDateDiff(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->getTime(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v10, v3

    move-wide v3, v6

    move-wide v5, v10

    goto :goto_3

    :catch_0
    move-exception p1

    move-wide v10, v3

    move-wide v3, v6

    move-wide v5, v10

    goto :goto_4

    :cond_2
    move-wide v5, v3

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    move-wide v5, v3

    :goto_4
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_5
    new-instance p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->resetIsCenter()V

    sget-object p3, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->listener:Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;

    invoke-virtual {p1, p3}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->setListener(Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    invoke-direct {p3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x50

    iput v0, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->imagezoombottom:Landroid/view/View;

    invoke-virtual {p2, v0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p3

    if-nez p3, :cond_4

    sget-object p3, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {p3, v2, v5, v6}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-ltz v2, :cond_4

    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object v0

    invoke-static {p3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getFilePathForImageloader(Ljava/io/File;)Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->displayImageOptions:Lc/e/a/b/c;

    invoke-virtual {v0, p3, p1, v1}, Lc/e/a/b/d;->c(Ljava/lang/String;Landroid/widget/ImageView;Lc/e/a/b/c;)V

    :cond_4
    return-object p2

    :goto_6
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public setBottomVisible(Z)V
    .locals 1

    sput-boolean p1, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->isbottomvisible:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    sget v0, Lcom/zoho/livechat/android/R$anim;->siq_zoomscalein:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->imagezoombottom:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->imagezoombottom:Landroid/view/View;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    sget v0, Lcom/zoho/livechat/android/R$anim;->siq_zoomscaleout:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->imagezoombottom:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->imagezoombottom:Landroid/view/View;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setBottomVisibleWithoutAnim(Z)V
    .locals 1

    :try_start_0
    sput-boolean p1, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->isbottomvisible:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->imagezoombottom:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->imagezoombottom:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->imagezoombottom:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->isbottomvisible:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->isbottomvisible:Z

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
