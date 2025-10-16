.class public Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$3;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchClicked(Lcom/zoho/livechat/android/models/SalesIQArticle;)V
    .locals 3

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->updateRecentArticleSearch(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$3;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    const-class v2, Lcom/zoho/livechat/android/ui/activities/ArticlesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "article_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$3;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
