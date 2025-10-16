.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;

.field public final synthetic val$articleDepartments:Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder$1;->val$articleDepartments:Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;)Lcom/zoho/livechat/android/ui/listener/ArticleDeptsClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder$1;->val$articleDepartments:Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;

    invoke-interface {p1, v0}, Lcom/zoho/livechat/android/ui/listener/ArticleDeptsClickListener;->onDeptClicked(Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;)V

    return-void
.end method
