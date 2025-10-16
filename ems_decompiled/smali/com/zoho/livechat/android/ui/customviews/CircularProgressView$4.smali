.class public Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->resetAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

.field public wasCancelled:Z


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$4;->this$0:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$4;->wasCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$4;->wasCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$4;->wasCancelled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$4;->this$0:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->resetAnimation()V

    :cond_0
    return-void
.end method
