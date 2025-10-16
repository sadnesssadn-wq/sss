.class public Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeSlotViewHolder"
.end annotation


# instance fields
.field public parentView:Landroid/widget/LinearLayout;

.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;

.field public timeslotTextView:Landroid/widget/TextView;

.field public timeslotView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;->this$1:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_timeslot_parent:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;->parentView:Landroid/widget/LinearLayout;

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_timeslot_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;->timeslotView:Landroid/widget/RelativeLayout;

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_timeslot_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;->timeslotTextView:Landroid/widget/TextView;

    const-string p2, "#212121"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
