.class public Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "hh:mm a"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;

    iget-object v1, v1, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$100(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xb

    invoke-virtual {v0, p3, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;

    iget-object p2, p2, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$202(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;J)J

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;

    iget-object p2, p2, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    new-instance p3, Ljava/util/Date;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$200(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2, p3}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$102(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;Ljava/util/Date;)Ljava/util/Date;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;

    iget-object p2, p2, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    iget-object p3, p2, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->time1View:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$200(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$700(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)V

    return-void
.end method
