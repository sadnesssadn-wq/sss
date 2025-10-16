.class public Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->initVotingView()V
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

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    iget-boolean v0, p1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->isVoted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->isVoted:Z

    new-instance p1, Lcom/zoho/livechat/android/utils/VoteApiUtil;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->access$100(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)Lcom/zoho/livechat/android/models/SalesIQArticle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    invoke-static {v3}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->access$100(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)Lcom/zoho/livechat/android/models/SalesIQArticle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getVisitors_liked()I

    move-result v3

    invoke-direct {p1, v1, v2, v3}, Lcom/zoho/livechat/android/utils/VoteApiUtil;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    iget-object v1, p1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeIcon:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeIconSelected:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->access$100(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)Lcom/zoho/livechat/android/models/SalesIQArticle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getVisitors_liked()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->access$300(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;Landroid/widget/ImageView;Landroid/widget/ImageView;ZI)V

    :cond_0
    return-void
.end method
