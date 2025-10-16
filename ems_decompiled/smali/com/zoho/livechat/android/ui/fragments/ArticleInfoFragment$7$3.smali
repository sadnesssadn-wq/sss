.class public Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7$3;->this$1:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7$3;->this$1:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->access$600(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7$3;->this$1:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->access$600(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
