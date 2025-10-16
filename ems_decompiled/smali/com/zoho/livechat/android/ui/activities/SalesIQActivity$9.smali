.class public Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$9;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$9;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "message"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "search_articles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "search_query"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$9;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$200(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$9;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$300(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isConversationEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$9;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$500(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->getCount()I

    move-result p1

    if-ne p1, p2, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$9;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$200(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$600(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$9;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$700(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->updateArticles(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$9;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$700(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$9;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    const/4 p2, 0x3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$9;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    :goto_0
    invoke-static {p1, p2}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$800(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;I)V

    :cond_2
    return-void
.end method
