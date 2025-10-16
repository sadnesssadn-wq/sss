.class public Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$200(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;

    iget-object p2, p2, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    invoke-static {p2, p3, p4}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$202(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;J)J

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    new-instance p2, Ljava/util/Date;

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;

    iget-object p3, p3, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {p3}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$200(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)J

    move-result-wide p3

    invoke-direct {p2, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1, p2}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$102(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;Ljava/util/Date;)Ljava/util/Date;

    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string p3, "dd MMM yyyy"

    invoke-direct {p1, p3, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;

    iget-object p2, p2, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    iget-object p3, p2, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->date1View:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$100(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$2;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$300(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)V

    return-void
.end method
