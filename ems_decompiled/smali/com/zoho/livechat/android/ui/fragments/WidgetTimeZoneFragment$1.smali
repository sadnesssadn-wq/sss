.class public Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->access$000(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;)Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->access$000(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;)Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
