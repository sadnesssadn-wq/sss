.class public Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateTimeSlotViewHolder"
.end annotation


# instance fields
.field public gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field public slotTitleView:Landroid/widget/TextView;

.field public slotsLayout:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;->this$0:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_timeslot_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;->slotTitleView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_timeslot_slot_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;->slotsLayout:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x4

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;->gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-void
.end method
