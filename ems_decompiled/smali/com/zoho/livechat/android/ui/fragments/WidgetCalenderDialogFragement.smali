.class public Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;
.super Lb/m/d/l;
.source ""


# instance fields
.field private calendarWidgetPicker:Lcom/zoho/livechat/android/ui/listener/CalendarWidgetPicker;

.field private date1Parent:Landroid/widget/LinearLayout;

.field public date1TitleView:Landroid/widget/TextView;

.field public date1View:Landroid/widget/TextView;

.field private date2Parent:Landroid/widget/LinearLayout;

.field public date2TitleView:Landroid/widget/TextView;

.field public date2View:Landroid/widget/TextView;

.field private fromDate:Ljava/util/Date;

.field private fromTime:J

.field private inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

.field private time1Parent:Landroid/widget/LinearLayout;

.field public time1TitleView:Landroid/widget/TextView;

.field public time1View:Landroid/widget/TextView;

.field private time2Parent:Landroid/widget/LinearLayout;

.field public time2TitleView:Landroid/widget/TextView;

.field public time2View:Landroid/widget/TextView;

.field private toDate:Ljava/util/Date;

.field private toTime:J

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private tzInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private tzParent:Landroid/widget/LinearLayout;

.field public tzTitleView:Landroid/widget/TextView;

.field public tzView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/m/d/l;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->tzInfo:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromTime:J

    return-wide v0
.end method

.method public static synthetic access$202(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;J)J
    .locals 0

    iput-wide p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromTime:J

    return-wide p1
.end method

.method public static synthetic access$300(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->handleToDateView()V

    return-void
.end method

.method public static synthetic access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toDate:Ljava/util/Date;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toDate:Ljava/util/Date;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toTime:J

    return-wide v0
.end method

.method public static synthetic access$602(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;J)J
    .locals 0

    iput-wide p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toTime:J

    return-wide p1
.end method

.method public static synthetic access$700(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->handleToTime()V

    return-void
.end method

.method private handleFromDateView()V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date1Parent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getFrom()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getFrom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getFrom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    :cond_1
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd MMM yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date1View:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date1Parent:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->handleFromTime()V

    :cond_2
    return-void
.end method

.method private handleFromTime()V
    .locals 6

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->isTime()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time1Parent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "hh:mm a"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromTime:J

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time1View:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time1Parent:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private handleToDateView()V
    .locals 5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date2Parent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toDate:Ljava/util/Date;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getTo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getTo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getTo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toDate:Ljava/util/Date;

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->isTime()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_1
    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toDate:Ljava/util/Date;

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lt v3, v2, :cond_4

    if-gt v3, v2, :cond_3

    if-lt v0, v1, :cond_4

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_1

    :cond_4
    :goto_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd MMM yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date2View:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date2Parent:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$3;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$3;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->handleToTime()V

    :cond_5
    return-void
.end method

.method private handleToTime()V
    .locals 7

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->isTime()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time2Parent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toTime:J

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-wide v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-wide v2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toTime:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_2

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_2

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const-wide/32 v5, 0xea60

    if-le v0, v2, :cond_1

    iget-wide v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromTime:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toTime:J

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toDate:Ljava/util/Date;

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    if-lt v4, v1, :cond_2

    iget-wide v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromTime:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toTime:J

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "hh:mm a"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time2View:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time2Parent:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$5;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$5;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {v0, p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getInputCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getLabel()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toolbar:Landroidx/appcompat/widget/Toolbar;

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_widgets_calendar_schedule:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "calendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date1TitleView:Landroid/widget/TextView;

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_widgets_calendar_setdate:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time1TitleView:Landroid/widget/TextView;

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_widgets_calendar_settime:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date1Parent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->isTime()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time1Parent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time1Parent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date2Parent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time2Parent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->isTime()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time1Parent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time2Parent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time1Parent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time2Parent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date1TitleView:Landroid/widget/TextView;

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_widgets_calendar_fromdate:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time1TitleView:Landroid/widget/TextView;

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_widgets_calendar_fromtime:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date2TitleView:Landroid/widget/TextView;

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_widgets_calendar_todate:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time2TitleView:Landroid/widget/TextView;

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_widgets_calendar_totime:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->handleFromDateView()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->handleToDateView()V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->isTz()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->tzParent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->tzTitleView:Landroid/widget/TextView;

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_widgets_calendar_timezone:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/TimeZoneUtil;->getDefaultTimeZone()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->tzInfo:Ljava/util/Map;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->tzInfo:Ljava/util/Map;

    const-string v1, "gmt"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->tzInfo:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->tzView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->tzParent:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->tzParent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    :goto_4
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-super {p0, p1}, Lb/m/d/l;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    sget v0, Lcom/zoho/livechat/android/R$menu;->siq_menu_calendar:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/zoho/livechat/android/R$layout;->siq_dialog_fragment_calender:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_dialog_toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    check-cast p2, Lb/b/k/h;

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, p3}, Lb/b/k/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    check-cast p2, Lb/b/k/h;

    invoke-virtual {p2}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->o(Z)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->s(Z)V

    sget v0, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_cancel:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->r(I)V

    :cond_0
    sget p2, Lcom/zoho/livechat/android/R$id;->siq_calender_from_date_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date1Parent:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_calender_from_time_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time1Parent:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_calender_to_date_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date2Parent:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_calender_to_time_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time2Parent:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_calender_tz_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->tzParent:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_from_date_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date1TitleView:Landroid/widget/TextView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_from_date:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date1View:Landroid/widget/TextView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_from_time_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time1TitleView:Landroid/widget/TextView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_from_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time1View:Landroid/widget/TextView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_to_date_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date2TitleView:Landroid/widget/TextView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_to_date:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date2View:Landroid/widget/TextView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_to_time_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time2TitleView:Landroid/widget/TextView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_to_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time2View:Landroid/widget/TextView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_tz_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->tzTitleView:Landroid/widget/TextView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_tz:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->tzView:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/zoho/livechat/android/R$id;->siq_submit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_b

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->isTz()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->tzInfo:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v3, "gmt"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "tz"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "calendar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "hh:mm a"

    const-string v4, "MMM dd, yyyy"

    const-string v5, " "

    if-eqz v1, :cond_2

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getFormat()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->isTime()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v6, "time"

    invoke-virtual {v0, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getFormat()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_2
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v6, "from_time"

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v6, "to_time"

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getFormat()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    :try_start_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v4

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toDate:Ljava/util/Date;

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->isTime()Z

    move-result v6

    const-string v7, " - "

    if-eqz v6, :cond_8

    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getTimeformat()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    :try_start_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    iget-object v8, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v8}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getTimeformat()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v3

    goto :goto_2

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getTimeformat()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getFormat()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->fromDate:Ljava/util/Date;

    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-wide v8, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->toTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v5, v6}, Lc/a/a/a/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-static {v3, v4, v7, v1}, Lc/a/a/a/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    :goto_5
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->isTz()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->tzInfo:Ljava/util/Map;

    if-eqz v3, :cond_a

    const-string v4, "tz_name"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ", "

    invoke-static {v1, v4, v3}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_a
    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "value"

    invoke-virtual {p1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->calendarWidgetPicker:Lcom/zoho/livechat/android/ui/listener/CalendarWidgetPicker;

    invoke-interface {v0, v1, p1}, Lcom/zoho/livechat/android/ui/listener/CalendarWidgetPicker;->onCalendarInfoPicked(Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_6

    :cond_b
    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    :goto_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return v2

    :cond_c
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public setCalendarWidgetPicker(Lcom/zoho/livechat/android/ui/listener/CalendarWidgetPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->calendarWidgetPicker:Lcom/zoho/livechat/android/ui/listener/CalendarWidgetPicker;

    return-void
.end method
