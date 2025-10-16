.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/livechat/android/ui/listener/CalendarWidgetPicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalendarInfoPicked(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;->doSendMessage(Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_0
    return-void
.end method
