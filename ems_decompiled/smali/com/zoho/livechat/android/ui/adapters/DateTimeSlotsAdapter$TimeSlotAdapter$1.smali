.class public Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;

.field public final synthetic val$holder:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;

.field public final synthetic val$time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;Ljava/lang/String;Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->val$time:Ljava/lang/String;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->val$holder:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->this$0:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->access$000(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;

    iget-object v1, v1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->val$time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->this$0:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->access$002(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->val$holder:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;->parentView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->access$100(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 1
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->val$holder:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;->timeslotTextView:Landroid/widget/TextView;

    const-string v0, "#212121"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->this$0:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;

    iget-object v2, v2, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->date:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->val$time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;->access$002(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->val$holder:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;

    iget-object v0, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;->parentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->access$200(Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    .line 3
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->val$holder:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$TimeSlotViewHolder;->timeslotTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter$TimeSlotAdapter;->this$0:Lcom/zoho/livechat/android/ui/adapters/DateTimeSlotsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method
