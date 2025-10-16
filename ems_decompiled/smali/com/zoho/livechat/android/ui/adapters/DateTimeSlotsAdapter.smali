.class public Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;,
        Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private dateTimeSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/WidgetDateTimeSlots;",
            ">;"
        }
    .end annotation
.end field

.field private selection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->selection:Ljava/lang/String;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->dateTimeSlots:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->selection:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->selection:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->dateTimeSlots:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;I)V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->dateTimeSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zoho/livechat/android/models/WidgetDateTimeSlots;

    iget-object v0, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;->slotTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/WidgetDateTimeSlots;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/WidgetDateTimeSlots;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/WidgetDateTimeSlots;->getTimes()Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {v0, p0, v1, p2}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;-><init>(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p2, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;->slotsLayout:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;->gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;->slotsLayout:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;
    .locals 3

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_item_timeslot:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$DateTimeSlotViewHolder;-><init>(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;Landroid/view/View;)V

    return-object p2
.end method
