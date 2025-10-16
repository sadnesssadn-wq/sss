.class public Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/livechat/android/ui/listener/ArticleDeptsClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeptClicked(Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->getDeptId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dept_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->getDeptName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowArticleCategories()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;

    invoke-direct {p1}, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-virtual {v0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v0

    .line 1
    new-instance v1, Lb/m/d/a;

    invoke-direct {v1, v0}, Lb/m/d/a;-><init>(Lb/m/d/y;)V

    .line 2
    sget v0, Lcom/zoho/livechat/android/R$id;->siq_article_base_frame:I

    const-class v2, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lb/m/d/i0;->j(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lb/m/d/i0;

    const-class p1, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;

    invoke-direct {p1}, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-virtual {v0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v0

    .line 3
    new-instance v1, Lb/m/d/a;

    invoke-direct {v1, v0}, Lb/m/d/a;-><init>(Lb/m/d/y;)V

    .line 4
    sget v0, Lcom/zoho/livechat/android/R$id;->siq_article_base_frame:I

    const-class v2, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lb/m/d/i0;->j(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lb/m/d/i0;

    const-class p1, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lb/m/d/i0;->d(Ljava/lang/String;)Lb/m/d/i0;

    invoke-virtual {v1}, Lb/m/d/i0;->e()I

    return-void
.end method
