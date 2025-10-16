.class public Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeZoneAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public defaultId:Ljava/lang/String;

.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;->defaultId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    check-cast p1, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;->render(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;
    .locals 3

    new-instance p2, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_item_timezone:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter$TimeZoneViewHolder;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;Landroid/view/View;)V

    return-object p2
.end method
