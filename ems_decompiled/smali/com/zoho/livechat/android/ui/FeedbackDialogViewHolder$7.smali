.class public Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->setRatingSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$7;->this$0:Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$7;->this$0:Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->access$500(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$7;->this$0:Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->access$500(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
