.class public Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$5;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->onQueryTextChange(Ljava/lang/String;)Z
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

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$5;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/zoho/livechat/android/utils/SearchArticlesUtil;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$5;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$200(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zoho/livechat/android/utils/SearchArticlesUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
