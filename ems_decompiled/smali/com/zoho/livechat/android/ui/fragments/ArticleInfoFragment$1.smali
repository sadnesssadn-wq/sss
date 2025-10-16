.class public Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "message"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "articles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "article_id"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    iget-object p2, p2, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->articleId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    iget-object p2, p1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->articleId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->access$000(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "articles_vote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "articleId"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->access$100(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)Lcom/zoho/livechat/android/models/SalesIQArticle;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->access$100(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)Lcom/zoho/livechat/android/models/SalesIQArticle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    const-string v2, "status"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, v0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->isVoted:Z

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getArticle(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQArticle;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->access$102(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;Lcom/zoho/livechat/android/models/SalesIQArticle;)Lcom/zoho/livechat/android/models/SalesIQArticle;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    iget-boolean p2, p1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->isVoted:Z

    if-nez p2, :cond_2

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
