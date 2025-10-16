.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar$OnRangeChangeListener;


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

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder$2;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeChanged(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder$2;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;

    invoke-static {v0, p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;->access$300(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;Ljava/util/ArrayList;)V

    return-void
.end method
