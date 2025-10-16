.class public Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$4;->this$2:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$4;->this$2:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$900(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$4;->this$2:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$4;->this$2:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$702(Lcom/zoho/livechat/android/utils/WavAudioRecorder;Z)Z

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$4;->this$2:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$802(Lcom/zoho/livechat/android/utils/WavAudioRecorder;Z)Z

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$4;->this$2:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    :goto_0
    invoke-static {p1, v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$902(Lcom/zoho/livechat/android/utils/WavAudioRecorder;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$4;->this$2:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$900(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$4;->this$2:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$4;->this$2:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$702(Lcom/zoho/livechat/android/utils/WavAudioRecorder;Z)Z

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$4;->this$2:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$802(Lcom/zoho/livechat/android/utils/WavAudioRecorder;Z)Z

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1$4;->this$2:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;->this$1:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    :goto_0
    invoke-static {p1, v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$902(Lcom/zoho/livechat/android/utils/WavAudioRecorder;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
