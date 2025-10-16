.class public Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/livechat/android/ui/listener/TimeZonePicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeZoneSelect(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-static {v0, p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->access$002(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gmt"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->tzView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
