.class public Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;->render(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;

.field public final synthetic val$tzInfo:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder$1;->this$2:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder$1;->val$tzInfo:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder$1;->this$2:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->access$100(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;)Lcom/zoho/livechat/android/ui/listener/TimeZonePicker;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder$1;->val$tzInfo:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/zoho/livechat/android/ui/listener/TimeZonePicker;->onTimeZoneSelect(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder$1;->this$2:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->hideKeyboard(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder$1;->this$2:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
