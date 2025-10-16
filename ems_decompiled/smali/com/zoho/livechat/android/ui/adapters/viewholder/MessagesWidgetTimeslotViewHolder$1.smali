.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;)Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMetaInfo()Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lb/b/k/h;

    invoke-virtual {v1}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v1

    new-instance v2, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;

    invoke-direct {v2}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;-><init>()V

    new-instance v3, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1$1;

    invoke-direct {v3, p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1;)V

    invoke-virtual {v2, v3}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeSlotDialogFragement;->setCalendarWidgetPicker(Lcom/zoho/livechat/android/ui/listener/CalendarWidgetPicker;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1
    new-instance v0, Lb/m/d/a;

    invoke-direct {v0, v1}, Lb/m/d/a;-><init>(Lb/m/d/y;)V

    const v1, 0x1020002

    .line 2
    invoke-virtual {v0, v1, v2}, Lb/m/d/i0;->b(ILandroidx/fragment/app/Fragment;)Lb/m/d/i0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/m/d/i0;->d(Ljava/lang/String;)Lb/m/d/i0;

    invoke-virtual {v0}, Lb/m/d/i0;->e()I

    return-void
.end method
