.class public Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeZoneViewHolder"
.end annotation


# instance fields
.field private descView:Landroid/widget/TextView;

.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_tz_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;->titleView:Landroid/widget/TextView;

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_tz_offset:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;->descView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public render(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;

    iget-object v1, v1, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;->defaultId:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;->this$1:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;

    iget-object v1, v1, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_widgets_timezone_current:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;->descView:Landroid/widget/TextView;

    const-string v1, "gmt"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
