.class public Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeSlotAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public date:Ljava/lang/String;

.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;

.field public times:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->this$0:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->date:Ljava/lang/String;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->times:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->getUnSelectedShape()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->getSelectedShape(Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedShape(Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private getUnSelectedShape()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    const-string v2, "#1e000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const-string v1, "#0c000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->times:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;I)V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;->timeslotTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->this$0:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->access$000(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;->parentView:Landroid/widget/LinearLayout;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->getSelectedShape(Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 1
    sget-object v2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;->timeslotTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;->parentView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->getUnSelectedShape()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 3
    sget-object v2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;->timeslotTextView:Landroid/widget/TextView;

    const-string v1, "#212121"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;->timeslotView:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;Ljava/lang/String;Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;
    .locals 3

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_item_timeslot_times:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;-><init>(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;Landroid/view/View;)V

    return-object p2
.end method
