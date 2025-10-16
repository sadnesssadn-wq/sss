.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->onImageClick(Lcom/zoho/livechat/android/models/SalesIQMessage;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$10;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$10;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$1802(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$10;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$1802(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$10;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$1900(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->setBottomVisibleWithoutAnim(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$10;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/ChatViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImgPreviewLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$10;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/ChatViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getImgPreviewLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method
