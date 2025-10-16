.class public Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$6;
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

.field public final synthetic val$normalView:Landroid/widget/ImageView;

.field public final synthetic val$selectionView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$6;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$6;->val$normalView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$6;->val$selectionView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$6;->val$normalView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p1, Lb/l/a/d;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment$6;->val$selectionView:Landroid/widget/ImageView;

    sget-object v1, Lb/l/a/b;->l:Lb/l/a/b$l;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lb/l/a/d;-><init>(Ljava/lang/Object;Lb/l/a/c;F)V

    new-instance v0, Lb/l/a/e;

    invoke-direct {v0}, Lb/l/a/e;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lb/l/a/e;->a(F)Lb/l/a/e;

    const v1, 0x44bb8000    # 1500.0f

    invoke-virtual {v0, v1}, Lb/l/a/e;->b(F)Lb/l/a/e;

    float-to-double v1, v2

    .line 1
    iput-wide v1, v0, Lb/l/a/e;->i:D

    .line 2
    iput-object v0, p1, Lb/l/a/d;->s:Lb/l/a/e;

    .line 3
    invoke-virtual {p1}, Lb/l/a/d;->f()V

    return-void
.end method
