.class public Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->doSelectionAnimation(Landroid/widget/ImageView;Landroid/widget/ImageView;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

.field public final synthetic val$count:I

.field public final synthetic val$dislike:Z


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    iput-boolean p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;->val$dislike:Z

    iput p3, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;->val$count:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-boolean p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;->val$dislike:Z

    const-string v0, "#45A4EC"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeTextView:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeTextView:Landroid/widget/TextView;

    :goto_0
    iget v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;->val$count:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->access$400(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string v4, "alpha"

    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v5, 0xc8

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7$1;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->access$500(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-array v7, v0, [F

    aput v3, v7, v2

    invoke-static {v1, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7$2;

    invoke-direct {v3, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7$2;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    invoke-static {v3}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->access$600(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)Landroid/widget/TextView;

    move-result-object v3

    new-array v0, v0, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v0, v2

    invoke-static {v3, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7$3;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7$3;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
