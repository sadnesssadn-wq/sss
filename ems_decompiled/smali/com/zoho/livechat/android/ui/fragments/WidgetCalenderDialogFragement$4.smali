.class public Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->handleFromTime()V
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

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$200(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    new-instance p1, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4$1;

    invoke-direct {v3, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;)V

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getFrom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, "+"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v4}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v4, v1}, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->setMin(II)V

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getTo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v2}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v4}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "range-calendar"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/32 v4, 0xea60

    sub-long/2addr v2, v4

    :cond_1
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/zoho/livechat/android/ui/customviews/BoundTimePickerDialog;->setMax(II)V

    :cond_2
    invoke-virtual {p1}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method
