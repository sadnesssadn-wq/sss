.class public Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

.field public final synthetic val$amplitude:D


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;D)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iput-wide p2, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->val$amplitude:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-wide v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->val$amplitude:D

    const/4 v2, 0x1

    const-wide v3, 0x40a5e00000000000L    # 2800.0

    cmpl-double v5, v0, v3

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object v0, v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$700(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Z

    move-result v0

    if-lez v5, :cond_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object v0, v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$800(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object v0, v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v0, v2}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$802(Lcom/zoho/livechat/android/utils/WavAudioRecorder;Z)Z

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object v0, v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$1000(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$1;

    invoke-direct {v4, p0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$1;-><init>(Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object v0, v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$1000(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$2;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$2;-><init>(Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object v0, v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$800(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object v0, v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v0, v2}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$802(Lcom/zoho/livechat/android/utils/WavAudioRecorder;Z)Z

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object v0, v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$1000(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$3;

    invoke-direct {v4, p0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$3;-><init>(Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object v0, v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$1000(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$4;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$4;-><init>(Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method
