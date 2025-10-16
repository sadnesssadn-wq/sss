.class public Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment$2;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "message"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "articles"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment$2;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->deptId:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getArticleCategory(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment$2;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;

    iget-object p2, p2, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->articleCategoryAdapter:Lcom/zoho/livechat/android/ui/adapters/ArticleCategoryAdapter;

    invoke-virtual {p2, p1}, Lcom/zoho/livechat/android/ui/adapters/ArticleCategoryAdapter;->updateData(Ljava/util/ArrayList;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment$2;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1}, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->access$000(Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;Z)V

    :try_start_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment$2;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Mobilisten"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method
