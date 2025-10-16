.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;)Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getValues()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;->access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;->access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;)I

    move-result v1

    const/16 v2, 0x14

    const-string v3, "value"

    const-string v4, "type"

    if-ne v1, v2, :cond_0

    const-string v1, "slider"

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "range-slider"

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, " - "

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    :goto_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;->access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;->doSendMessage(Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_1
    return-void
.end method
