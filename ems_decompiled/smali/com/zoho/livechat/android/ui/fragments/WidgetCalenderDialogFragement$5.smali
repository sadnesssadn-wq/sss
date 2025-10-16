.class public Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->handleToTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$5;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$5;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$600(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {p1, v10}, Ljava/util/Calendar;->get(I)I

    move-result p1

    new-instance v11, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$5;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$5$1;

    invoke-direct {v3, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$5$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$5;)V

    const/4 v6, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v6}, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$5;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v2}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$200(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v9, :cond_0

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v11, p1, v1}, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->setMin(II)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$5;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getTo()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$5;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getTo()Ljava/lang/String;

    move-result-object p1

    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$5;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getTo()Ljava/lang/String;

    move-result-object p1

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$5;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v11, v0, p1}, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->setMax(II)V

    :cond_0
    invoke-virtual {v11}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method
