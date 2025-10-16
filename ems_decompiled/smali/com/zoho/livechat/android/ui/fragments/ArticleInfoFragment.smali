.class public Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;
.super Lcom/zoho/livechat/android/ui/fragments/BaseFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$ViewTypes;
    }
.end annotation


# instance fields
.field private article:Lcom/zoho/livechat/android/models/SalesIQArticle;

.field public articleId:Ljava/lang/String;

.field public articleLayout:Landroid/widget/LinearLayout;

.field private articlesReceiver:Landroid/content/BroadcastReceiver;

.field public bottomLayoutShadow:Landroid/view/View;

.field public bottomViewLayout:Landroid/widget/RelativeLayout;

.field public chatNowLayout:Landroid/widget/LinearLayout;

.field public chatNowTextView:Landroid/widget/TextView;

.field public deptId:Ljava/lang/String;

.field public dislikeIcon:Landroid/widget/ImageView;

.field public dislikeIconSelected:Landroid/widget/ImageView;

.field private dislikeLayout:Landroid/widget/LinearLayout;

.field public dislikeTextView:Landroid/widget/TextView;

.field public isVoted:Z

.field public likeIcon:Landroid/widget/ImageView;

.field public likeIconSelected:Landroid/widget/ImageView;

.field private likeLayout:Landroid/widget/LinearLayout;

.field public likeTextView:Landroid/widget/TextView;

.field public progressBar:Landroid/widget/ProgressBar;

.field private thanksFeedbackView:Landroid/widget/TextView;

.field private uts_path_updated:Z

.field public webView:Lcom/zoho/livechat/android/ui/customviews/ArticleWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->isVoted:Z

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->uts_path_updated:Z

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->articlesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->updateView(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)Lcom/zoho/livechat/android/models/SalesIQArticle;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;Lcom/zoho/livechat/android/models/SalesIQArticle;)Lcom/zoho/livechat/android/models/SalesIQArticle;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->initVotingView()V

    return-void
.end method

.method public static synthetic access$300(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;Landroid/widget/ImageView;Landroid/widget/ImageView;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->doSelectionAnimation(Landroid/widget/ImageView;Landroid/widget/ImageView;ZI)V

    return-void
.end method

.method public static synthetic access$400(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->thanksFeedbackView:Landroid/widget/TextView;

    return-object p0
.end method

.method private doSelectionAnimation(Landroid/widget/ImageView;Landroid/widget/ImageView;ZI)V
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string v4, "alpha"

    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0xc8

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$6;

    invoke-direct {v7, p0, p1, p2}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$6;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p3, :cond_0

    sget p1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_dislike_flat:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_like_flat:I

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    new-array p1, v0, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, p1, v2

    invoke-static {p2, v4, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v7, 0x32

    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v4, 0x2

    new-array v7, v4, [Landroid/animation/PropertyValuesHolder;

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v4, [F

    fill-array-data v9, :array_0

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v7, v2

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v4, [F

    fill-array-data v9, :array_1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {p2, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v8, 0x3

    new-array v8, v8, [F

    aput v3, v8, v2

    if-eqz p3, :cond_1

    const/high16 v2, -0x3ee00000    # -10.0f

    goto :goto_1

    :cond_1
    const/high16 v2, 0x41200000    # 10.0f

    :goto_1
    aput v2, v8, v0

    aput v3, v8, v4

    const-string v0, "rotation"

    invoke-static {p2, v0, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;

    invoke-direct {p1, p0, p3, p4}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$7;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;ZI)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleVisibiliy(I)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->articleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->bottomViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->bottomLayoutShadow:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->articleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->bottomViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->bottomLayoutShadow:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initVotingView()V
    .locals 6

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->thanksFeedbackView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getRated_type()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getVisitors_liked()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeTextView:Landroid/widget/TextView;

    const-string v3, "#6f7c8e"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getVisitors_disliked()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeTextView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeIconSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeIconSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$4;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$4;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$5;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$5;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getRated_type()I

    move-result v0

    const/4 v3, 0x3

    const-string v4, "#45A4EC"

    const/4 v5, 0x0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getVisitors_liked()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeTextView:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeIconSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeLayout:Landroid/widget/LinearLayout;

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getRated_type()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getVisitors_liked()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeTextView:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeIconSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateView(Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getArticle(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQArticle;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getDepartment_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->deptId:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->uts_path_updated:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->uts_path_updated:Z

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getOperationCallback()Lcom/zoho/livechat/android/operation/OperationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getOperationCallback()Lcom/zoho/livechat/android/operation/OperationCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uts_path"

    invoke-interface {v0, v4, v3}, Lcom/zoho/livechat/android/operation/OperationCallback;->handle(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v4

    const-string v5, "LAST_VIEWED_TIME"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getVisitors_viewed()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "VISITORS_VIEWED"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/zoho/livechat/android/provider/ZohoLDContract$Articles;->contenturi:Landroid/net/Uri;

    new-array v5, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-string v7, "ARTICLE_ID =? "

    invoke-virtual {v0, v4, v3, v7, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getArticleInfo()Lcom/zoho/livechat/android/models/SalesIQArticleInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;->getContent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-direct {p0, v2}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->handleVisibiliy(I)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->initVotingView()V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "article_css"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "<style>"

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</style>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "<style>    *{padding: 0; margin: 0}    .zsiq-prev-content img {        width: 100% !important;        border-radius: 12px !important;    }    .zsiq-prev-content * {        font-size: 14px !important;        line-height: 22px;        max-width: 100% !important;        box-sizing: border-box;        word-break: break-word;        overflow-x: hidden;    }    .zsiq-prev-header {        text-align: left;        font-size: 18px;        line-height: 20px;        color: #212121;        padding:20px 16px;     }.zsiq-prev-content{ padding: 0 16px;}</style>"

    :goto_0
    const-string v2, "<div class=\"zsiq-prev-header\" id=\"zsiq-prev-header\"><strong>"

    invoke-static {p1, v2}, Lc/a/a/a/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</strong></div><div class=\"zsiq-prev-content\"><div>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "</div></div>"

    invoke-static {p1, v0}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->webView:Lcom/zoho/livechat/android/ui/customviews/ArticleWebView;

    const/4 v2, 0x0

    const-string v3, "text/html; charset=UTF-8"

    invoke-virtual {v0, p1, v3, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/zoho/livechat/android/utils/VoteApiUtil;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1, v6}, Lcom/zoho/livechat/android/utils/VoteApiUtil;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->webView:Lcom/zoho/livechat/android/ui/customviews/ArticleWebView;

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$3;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$3;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0, v1}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->handleVisibiliy(I)V

    new-instance v0, Lcom/zoho/livechat/android/utils/GetArticleInfoUtil;

    invoke-direct {v0, p1}, Lcom/zoho/livechat/android/utils/GetArticleInfoUtil;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->handleVisibiliy(I)V

    new-instance v0, Lcom/zoho/livechat/android/utils/GetArticleInfoUtil;

    invoke-direct {v0, p1}, Lcom/zoho/livechat/android/utils/GetArticleInfoUtil;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_2
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->getLanguage()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [I

    sget v0, Lcom/zoho/livechat/android/R$attr;->selectableItemBackgroundBorderless:I

    aput v0, p1, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isHideEmbed()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->enableChatInOfflineMode()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->chatNowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v0, "#6f7c8e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->chatNowLayout:Landroid/widget/LinearLayout;

    .line 1
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->chatNowLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$2;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$2;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->chatNowTextView:Landroid/widget/TextView;

    sget v0, Lcom/zoho/livechat/android/R$string;->articles_pursuechat:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->chatNowTextView:Landroid/widget/TextView;

    sget v0, Lcom/zoho/livechat/android/R$string;->articles_startchat:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->chatNowLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "article_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->articleId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->updateView(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/zoho/livechat/android/R$layout;->siq_fragment_article_info:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_article_webview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zoho/livechat/android/ui/customviews/ArticleWebView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->webView:Lcom/zoho/livechat/android/ui/customviews/ArticleWebView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_like_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeIcon:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_dislike_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeIcon:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_like_icon_selected:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeIconSelected:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_dislike_icon_selected:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeIconSelected:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_like_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_dislike_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_like_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->likeLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_dislike_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->dislikeLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_thanks_feedback:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->thanksFeedbackView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_article_bottom_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->bottomViewLayout:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_chatnow_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->chatNowLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_chatnow_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->chatNowTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_articles_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_article_content_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->articleLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_article_bottom_view_shadow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->bottomLayoutShadow:Landroid/view/View;

    return-object p1
.end method

.method public onNetworkChange(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->articlesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lb/q/a/a;->d(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;->articlesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "receivearticles"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb/q/a/a;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
